USE [BIBLIOTHEQUE]
GO
CREATE Proc [dbo].[InsertUtilisateurs]
@user varchar(20),
@pass varchar(15)
as begin
  insert into Utilisateurs(UserID,MP,datedAcces,actif)
  values (@user,convert(nvarchar(20), HashBytes('MD5', @user + @pass)),NULL,1)
end
GO


