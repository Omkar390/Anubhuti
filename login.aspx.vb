Imports System.Data
Imports System.Security.Cryptography
Imports System.IO

Partial Class login
    Inherits System.Web.UI.Page



    Protected Sub _login_Authenticate(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles Login1.Authenticate
        Try
            'Stpes performed for user login
            'First clear the old session!
            Session.Clear()
            Dim Client_ID As Integer = 0
            Dim ds As New DataSet()
            Login1.UserName = Login1.UserName.Trim
            ds = UserManager.Validate(Login1.UserName, Login1.Password)
            If (ds.Tables(0).Rows.Count > 0) Then
                'redirect to client selection screen
                e.Authenticated = True
                'Session("user_id") = Login1.UserName
                Session("user_id") = ds.Tables(0).Rows(0)("userid")
                FormsAuthentication.SetAuthCookie(Login1.UserName, True)
                Response.Redirect("SurveyMain.aspx", True)
            End If
            ScriptManager.RegisterStartupScript(Me.Page, Me.Page.[GetType](), "showloginfailure", "document.getElementById('lblFailure').style.display = 'block';", True)
            e.Authenticated = False
        Catch ex As Exception
            lblError.Text = ex.Message
            lblError.Text = "We are sorry! An error has occurred. Please try again."
            lblError.Visible = True
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Page.Form.DefaultButton = Login1.FindControl("btnLogin").UniqueID
        'Clear the session variables
        Dim txtUser As New TextBox
        Dim txtPass As New TextBox
        Dim lnk As New Button

        txtUser = DirectCast(Login1.FindControl("UserName"), TextBox)
        txtPass = DirectCast(Login1.FindControl("PassWord"), TextBox)
        lnk = DirectCast(Login1.FindControl("btnLogin"), Button)

        txtPass.Attributes.Add("onKeyPress", "javascript:if (event.keyCode == 13) __doPostBack('" + lnk.UniqueID + "','')")
        txtUser.Attributes.Add("onKeyPress", "javascript:if (event.keyCode == 13) __doPostBack('" + lnk.UniqueID + "','')")
        FormsAuthentication.SignOut()
        Session.Clear()
    End Sub

End Class
