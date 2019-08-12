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
.field final version:I

.field final xt9LangId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nuance/connect/api/LanguageService$LdbInfo;->xt9LangId:I

    iput p2, p0, Lcom/nuance/connect/api/LanguageService$LdbInfo;->version:I

    return-void
.end method


# virtual methods
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
