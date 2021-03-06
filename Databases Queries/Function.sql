USE [BIBLIOTHEQUE]
GO
create Function [dbo].[Verifier]
(@user varchar(20),
@pass varchar(15))
returns bit
as begin
  declare @i bit
  
  if Exists (select MP, userID from Utilisateurs
		where convert(nvarchar(20), HashBytes('MD5', @user + @pass)) = (select MP from Utilisateurs where UserID = @user))
		set @i = 1

  else set @i = 0
  return @i
end
GO


