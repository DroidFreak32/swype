.class public Lcom/facebook/share/internal/ShareContentValidation;
.super Ljava/lang/Object;
.source "ShareContentValidation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/ShareContentValidation$1;,
        Lcom/facebook/share/internal/ShareContentValidation$Validator;,
        Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;,
        Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;
    }
.end annotation


# static fields
.field private static ApiValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

.field private static DefaultValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

.field private static WebShareValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareOpenGraphAction;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphAction(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareOpenGraphObject;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/ShareContentValidation$Validator;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/model/ShareOpenGraphValueContainer;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .param p2, "x2"    # Z

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphValueContainer(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/ShareContentValidation$Validator;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForNativeDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareVideo;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateVideo(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForWebDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForApi(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$500(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareLinkContent;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateLinkContent(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/SharePhotoContent;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$700(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareVideoContent;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateVideoContent(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$800(Lcom/facebook/share/model/ShareMediaContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareMediaContent;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateMediaContent(Lcom/facebook/share/model/ShareMediaContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$900(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareOpenGraphContent;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method private static getApiValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .registers 2

    .prologue
    .line 82
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->ApiValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    if-nez v0, :cond_c

    .line 83
    new-instance v0, Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V

    sput-object v0, Lcom/facebook/share/internal/ShareContentValidation;->ApiValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 85
    :cond_c
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->ApiValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    return-object v0
.end method

.method private static getDefaultValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .registers 2

    .prologue
    .line 75
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->DefaultValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    if-nez v0, :cond_c

    .line 76
    new-instance v0, Lcom/facebook/share/internal/ShareContentValidation$Validator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/share/internal/ShareContentValidation$Validator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V

    sput-object v0, Lcom/facebook/share/internal/ShareContentValidation;->DefaultValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 78
    :cond_c
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->DefaultValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    return-object v0
.end method

.method private static getWebShareValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .registers 2

    .prologue
    .line 89
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->WebShareValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    if-nez v0, :cond_c

    .line 90
    new-instance v0, Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V

    sput-object v0, Lcom/facebook/share/internal/ShareContentValidation;->WebShareValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 92
    :cond_c
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->WebShareValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    return-object v0
.end method

.method private static validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 4
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    .prologue
    .line 97
    if-nez p0, :cond_b

    .line 98
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Must provide non-null content to share"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_b
    instance-of v0, p0, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v0, :cond_15

    .line 102
    check-cast p0, Lcom/facebook/share/model/ShareLinkContent;

    .end local p0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareLinkContent;)V

    .line 112
    :cond_14
    :goto_14
    return-void

    .line 103
    .restart local p0    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_15
    instance-of v0, p0, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v0, :cond_1f

    .line 104
    check-cast p0, Lcom/facebook/share/model/SharePhotoContent;

    .end local p0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhotoContent;)V

    goto :goto_14

    .line 105
    .restart local p0    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_1f
    instance-of v0, p0, Lcom/facebook/share/model/ShareVideoContent;

    if-eqz v0, :cond_29

    .line 106
    check-cast p0, Lcom/facebook/share/model/ShareVideoContent;

    .end local p0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareVideoContent;)V

    goto :goto_14

    .line 107
    .restart local p0    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_29
    instance-of v0, p0, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v0, :cond_33

    .line 108
    check-cast p0, Lcom/facebook/share/model/ShareOpenGraphContent;

    .end local p0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphContent;)V

    goto :goto_14

    .line 109
    .restart local p0    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_33
    instance-of v0, p0, Lcom/facebook/share/model/ShareMediaContent;

    if-eqz v0, :cond_14

    .line 110
    check-cast p0, Lcom/facebook/share/model/ShareMediaContent;

    .end local p0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareMediaContent;)V

    goto :goto_14
.end method

.method public static validateForApiShare(Lcom/facebook/share/model/ShareContent;)V
    .registers 2
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 71
    invoke-static {}, Lcom/facebook/share/internal/ShareContentValidation;->getApiValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation;->validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 72
    return-void
.end method

.method public static validateForMessage(Lcom/facebook/share/model/ShareContent;)V
    .registers 2
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 59
    invoke-static {}, Lcom/facebook/share/internal/ShareContentValidation;->getDefaultValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation;->validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 60
    return-void
.end method

.method public static validateForNativeShare(Lcom/facebook/share/model/ShareContent;)V
    .registers 2
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 63
    invoke-static {}, Lcom/facebook/share/internal/ShareContentValidation;->getDefaultValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation;->validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 64
    return-void
.end method

.method public static validateForWebShare(Lcom/facebook/share/model/ShareContent;)V
    .registers 2
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 67
    invoke-static {}, Lcom/facebook/share/internal/ShareContentValidation;->getWebShareValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation;->validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 68
    return-void
.end method

.method private static validateLinkContent(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 5
    .param p0, "linkContent"    # Lcom/facebook/share/model/ShareLinkContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object v0

    .line 117
    .local v0, "imageUrl":Landroid/net/Uri;
    if-eqz v0, :cond_15

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 118
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "Image Url must be an http:// or https:// url"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_15
    return-void
.end method

.method private static validateMediaContent(Lcom/facebook/share/model/ShareMediaContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 11
    .param p0, "mediaContent"    # Lcom/facebook/share/model/ShareMediaContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    const/4 v8, 0x6

    .line 205
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMediaContent;->getMedia()Ljava/util/List;

    move-result-object v1

    .line 206
    .local v1, "media":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/ShareMedia;>;"
    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 207
    :cond_d
    new-instance v3, Lcom/facebook/FacebookException;

    const-string/jumbo v4, "Must specify at least one medium in ShareMediaContent."

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 209
    :cond_16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v8, :cond_35

    .line 210
    new-instance v3, Lcom/facebook/FacebookException;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v5, "Cannot add more than %d media."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 216
    :cond_35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/share/model/ShareMedia;

    .line 217
    .local v2, "medium":Lcom/facebook/share/model/ShareMedia;
    invoke-virtual {p1, v2}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareMedia;)V

    goto :goto_39

    .line 219
    .end local v2    # "medium":Lcom/facebook/share/model/ShareMedia;
    :cond_49
    return-void
.end method

.method public static validateMedium(Lcom/facebook/share/model/ShareMedia;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 8
    .param p0, "medium"    # Lcom/facebook/share/model/ShareMedia;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 222
    instance-of v0, p0, Lcom/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_a

    .line 223
    check-cast p0, Lcom/facebook/share/model/SharePhoto;

    .end local p0    # "medium":Lcom/facebook/share/model/ShareMedia;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhoto;)V

    .line 225
    :goto_9
    return-void

    .line 224
    .restart local p0    # "medium":Lcom/facebook/share/model/ShareMedia;
    :cond_a
    instance-of v0, p0, Lcom/facebook/share/model/ShareVideo;

    if-eqz v0, :cond_14

    .line 225
    check-cast p0, Lcom/facebook/share/model/ShareVideo;

    .end local p0    # "medium":Lcom/facebook/share/model/ShareMedia;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareVideo;)V

    goto :goto_9

    .line 227
    .restart local p0    # "medium":Lcom/facebook/share/model/ShareMedia;
    :cond_14
    new-instance v0, Lcom/facebook/FacebookException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "Invalid media type: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateOpenGraphAction(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 4
    .param p0, "openGraphAction"    # Lcom/facebook/share/model/ShareOpenGraphAction;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 255
    if-nez p0, :cond_b

    .line 256
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Must specify a non-null ShareOpenGraphAction"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_b
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphAction;->getActionType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 260
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "ShareOpenGraphAction must have a non-empty actionType"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_1e
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Z)V

    .line 264
    return-void
.end method

.method private static validateOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 6
    .param p0, "openGraphContent"    # Lcom/facebook/share/model/ShareOpenGraphContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphAction;)V

    .line 239
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPreviewPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "previewPropertyName":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 241
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "Must specify a previewPropertyName."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_1a
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/share/model/ShareOpenGraphAction;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_41

    .line 245
    new-instance v1, Lcom/facebook/FacebookException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Property \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" was not found on the action. The name of the preview property must match the name of an action property."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_41
    return-void
.end method

.method private static validateOpenGraphKey(Ljava/lang/String;Z)V
    .registers 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "requireNamespace"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 301
    if-nez p1, :cond_5

    .line 314
    :cond_4
    return-void

    .line 305
    :cond_5
    const-string/jumbo v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "components":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1d

    .line 307
    new-instance v4, Lcom/facebook/FacebookException;

    const-string/jumbo v5, "Open Graph keys must be namespaced: %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v7

    invoke-direct {v4, v5, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .line 309
    :cond_1d
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_20
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 310
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 311
    new-instance v4, Lcom/facebook/FacebookException;

    const-string/jumbo v5, "Invalid key found in Open Graph dictionary: %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v7

    invoke-direct {v4, v5, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .line 309
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_20
.end method

.method private static validateOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 4
    .param p0, "openGraphObject"    # Lcom/facebook/share/model/ShareOpenGraphObject;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 269
    if-nez p0, :cond_b

    .line 270
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Cannot share a null ShareOpenGraphObject"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_b
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Z)V

    .line 274
    return-void
.end method

.method private static validateOpenGraphValueContainer(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/ShareContentValidation$Validator;Z)V
    .registers 10
    .param p0, "valueContainer"    # Lcom/facebook/share/model/ShareOpenGraphValueContainer;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .param p2, "requireNamespace"    # Z

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 281
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 282
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphKey(Ljava/lang/String;Z)V

    .line 283
    invoke-virtual {p0, v2}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 284
    .local v3, "o":Ljava/lang/Object;
    instance-of v5, v3, Ljava/util/List;

    if-eqz v5, :cond_3e

    .line 285
    check-cast v3, Ljava/util/List;

    .line 286
    .end local v3    # "o":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 287
    .local v4, "objectInList":Ljava/lang/Object;
    if-nez v4, :cond_3a

    .line 288
    new-instance v5, Lcom/facebook/FacebookException;

    const-string/jumbo v6, "Cannot put null objects in Lists in ShareOpenGraphObjects and ShareOpenGraphActions"

    invoke-direct {v5, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 292
    :cond_3a
    invoke-static {v4, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphValueContainerObject(Ljava/lang/Object;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    goto :goto_25

    .line 295
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "objectInList":Ljava/lang/Object;
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_3e
    invoke-static {v3, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphValueContainerObject(Ljava/lang/Object;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    goto :goto_8

    .line 298
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "o":Ljava/lang/Object;
    :cond_42
    return-void
.end method

.method private static validateOpenGraphValueContainerObject(Ljava/lang/Object;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 318
    instance-of v0, p0, Lcom/facebook/share/model/ShareOpenGraphObject;

    if-eqz v0, :cond_a

    .line 319
    check-cast p0, Lcom/facebook/share/model/ShareOpenGraphObject;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphObject;)V

    .line 323
    :cond_9
    :goto_9
    return-void

    .line 320
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_a
    instance-of v0, p0, Lcom/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_9

    .line 321
    check-cast p0, Lcom/facebook/share/model/SharePhoto;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhoto;)V

    goto :goto_9
.end method

.method private static validatePhoto(Lcom/facebook/share/model/SharePhoto;)V
    .registers 5
    .param p0, "photo"    # Lcom/facebook/share/model/SharePhoto;

    .prologue
    .line 142
    if-nez p0, :cond_b

    .line 143
    new-instance v2, Lcom/facebook/FacebookException;

    const-string/jumbo v3, "Cannot share a null SharePhoto"

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :cond_b
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    .local v0, "photoBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    .line 149
    .local v1, "photoUri":Landroid/net/Uri;
    if-nez v0, :cond_20

    if-nez v1, :cond_20

    .line 150
    new-instance v2, Lcom/facebook/FacebookException;

    const-string/jumbo v3, "SharePhoto does not have a Bitmap or ImageUrl specified"

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_20
    return-void
.end method

.method private static validatePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 11
    .param p0, "photoContent"    # Lcom/facebook/share/model/SharePhotoContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    const/4 v8, 0x6

    .line 124
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhotoContent;->getPhotos()Ljava/util/List;

    move-result-object v2

    .line 125
    .local v2, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/SharePhoto;>;"
    if-eqz v2, :cond_d

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 126
    :cond_d
    new-instance v3, Lcom/facebook/FacebookException;

    const-string/jumbo v4, "Must specify at least one Photo in SharePhotoContent."

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    :cond_16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v8, :cond_35

    .line 129
    new-instance v3, Lcom/facebook/FacebookException;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v5, "Cannot add more than %d photos."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 136
    :cond_35
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/share/model/SharePhoto;

    .line 137
    .local v1, "photo":Lcom/facebook/share/model/SharePhoto;
    invoke-virtual {p1, v1}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhoto;)V

    goto :goto_39

    .line 139
    .end local v1    # "photo":Lcom/facebook/share/model/SharePhoto;
    :cond_49
    return-void
.end method

.method private static validatePhotoForApi(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 6
    .param p0, "photo"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 155
    invoke-static {p0}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhoto(Lcom/facebook/share/model/SharePhoto;)V

    .line 157
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    .local v0, "photoBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    .line 160
    .local v1, "photoUri":Landroid/net/Uri;
    if-nez v0, :cond_22

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->isOpenGraphContent()Z

    move-result v2

    if-nez v2, :cond_22

    .line 161
    new-instance v2, Lcom/facebook/FacebookException;

    const-string/jumbo v3, "Cannot set the ImageUrl of a SharePhoto to the Uri of an image on the web when sharing SharePhotoContent"

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    :cond_22
    return-void
.end method

.method private static validatePhotoForNativeDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 3
    .param p0, "photo"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 168
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForApi(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 170
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 171
    :cond_13
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasContentProvider(Landroid/content/Context;)V

    .line 173
    :cond_1a
    return-void
.end method

.method private static validatePhotoForWebDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "photo"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 176
    invoke-static {p0}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhoto(Lcom/facebook/share/model/SharePhoto;)V

    .line 177
    return-void
.end method

.method private static validateVideo(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 5
    .param p0, "video"    # Lcom/facebook/share/model/ShareVideo;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 190
    if-nez p0, :cond_b

    .line 191
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "Cannot share a null ShareVideo"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_b
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object v0

    .line 195
    .local v0, "localUri":Landroid/net/Uri;
    if-nez v0, :cond_1a

    .line 196
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "ShareVideo does not have a LocalUrl specified"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_1a
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isContentUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isFileUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 200
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "ShareVideo must reference a video that is on the device"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_2f
    return-void
.end method

.method private static validateVideoContent(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 4
    .param p0, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getVideo()Lcom/facebook/share/model/ShareVideo;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareVideo;)V

    .line 183
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getPreviewPhoto()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    .line 184
    .local v0, "previewPhoto":Lcom/facebook/share/model/SharePhoto;
    if-eqz v0, :cond_10

    .line 185
    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhoto;)V

    .line 187
    :cond_10
    return-void
.end method
