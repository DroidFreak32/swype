.class Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ACDownloadedLanguage"
.end annotation


# instance fields
.field final flavor:Ljava/lang/String;

.field final type:Ljava/lang/String;

.field final version:I

.field final xt9LanguageId:I


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;->xt9LanguageId:I

    iput p2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;->version:I

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;->type:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;->flavor:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1400(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static fromJson(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;
    .registers 7

    const/4 v1, 0x0

    if-eqz p0, :cond_66

    const-string/jumbo v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    :try_start_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "LANGUAGE_ID"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v2, "VERSION"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v2, "TYPE_INSTALLED"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "FLAVOR_INSTALLED"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string/jumbo v2, "FLAVOR_INSTALLED"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_37
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;-><init>(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_3c} :catch_3f

    :goto_3c
    return-object v0

    :cond_3d
    move-object v2, v1

    goto :goto_37

    :catch_3f
    move-exception v0

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$900()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Could not create a ACDownloadedLanguage from json: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_66
    move-object v0, v1

    goto :goto_3c
.end method

.method private toJson()Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "LANGUAGE_ID"

    iget v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;->xt9LanguageId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "VERSION"

    iget v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;->version:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "TYPE_INSTALLED"

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "FLAVOR_INSTALLED"

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;->flavor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_28} :catch_2a

    move-result-object v0

    :goto_29
    return-object v0

    :catch_2a
    move-exception v0

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$900()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not convert to JSON: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const-string/jumbo v0, ""

    goto :goto_29
.end method
