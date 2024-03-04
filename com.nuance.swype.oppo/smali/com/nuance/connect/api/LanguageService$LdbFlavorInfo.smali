.class public Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/api/LanguageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LdbFlavorInfo"
.end annotation


# instance fields
.field final flavor:Ljava/lang/String;

.field final version:I

.field final xt9LangId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->xt9LangId:I

    iput p2, p0, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->version:I

    iput-object p3, p0, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->flavor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFlavor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->flavor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->version:I

    return v0
.end method

.method public getXT9LanguageId()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->xt9LangId:I

    return v0
.end method
