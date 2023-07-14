.class public Lcom/nuance/connect/api/LanguageService$LdbInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/api/LanguageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LdbInfo"
.end annotation


# instance fields
.field final countryCode:Ljava/lang/String;

.field final displayName:Ljava/lang/String;

.field final flavor:Ljava/lang/String;

.field final version:I

.field final xt9LangId:I

.field final xt9LangIds:[I


# direct methods
.method public constructor <init>([ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-array p1, v0, [I

    :cond_0
    iput-object p1, p0, Lcom/nuance/connect/api/LanguageService$LdbInfo;->xt9LangIds:[I

    iget-object v1, p0, Lcom/nuance/connect/api/LanguageService$LdbInfo;->xt9LangIds:[I

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/nuance/connect/api/LanguageService$LdbInfo;->xt9LangIds:[I

    aget v0, v1, v0

    :cond_1
    iput v0, p0, Lcom/nuance/connect/api/LanguageService$LdbInfo;->xt9LangId:I

    iput p5, p0, Lcom/nuance/connect/api/LanguageService$LdbInfo;->version:I

    iput-object p2, p0, Lcom/nuance/connect/api/LanguageService$LdbInfo;->flavor:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/connect/api/LanguageService$LdbInfo;->displayName:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/connect/api/LanguageService$LdbInfo;->countryCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/api/LanguageService$LdbInfo;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/api/LanguageService$LdbInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlavor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/api/LanguageService$LdbInfo;->flavor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/api/LanguageService$LdbInfo;->version:I

    return v0
.end method

.method public getXT9LanguageId()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/api/LanguageService$LdbInfo;->xt9LangId:I

    return v0
.end method

.method public getXT9LanguageIds()[I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/api/LanguageService$LdbInfo;->xt9LangIds:[I

    return-object v0
.end method
