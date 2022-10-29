.class public final Lcom/facebook/Profile;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIRST_NAME_KEY:Ljava/lang/String; = "first_name"

.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final LAST_NAME_KEY:Ljava/lang/String; = "last_name"

.field private static final LINK_URI_KEY:Ljava/lang/String; = "link_uri"

.field private static final MIDDLE_NAME_KEY:Ljava/lang/String; = "middle_name"

.field private static final NAME_KEY:Ljava/lang/String; = "name"


# instance fields
.field private final firstName:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final lastName:Ljava/lang/String;

.field private final linkUri:Landroid/net/Uri;

.field private final middleName:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 301
    new-instance v0, Lcom/facebook/Profile$2;

    invoke-direct {v0}, Lcom/facebook/Profile$2;-><init>()V

    sput-object v0, Lcom/facebook/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "linkUriString":Ljava/lang/String;
    if-nez v0, :cond_2b

    const/4 v1, 0x0

    :goto_28
    iput-object v1, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    .line 284
    return-void

    .line 283
    :cond_2b
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_28
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/Profile$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/facebook/Profile$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/Profile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "middleName"    # Ljava/lang/String;
    .param p4, "lastName"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "linkUri"    # Landroid/net/Uri;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-string/jumbo v0, "id"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    .line 138
    iput-object p3, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    .line 139
    iput-object p4, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    .line 140
    iput-object p5, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    .line 141
    iput-object p6, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    .line 142
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const-string/jumbo v2, "id"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    .line 268
    const-string/jumbo v2, "first_name"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    .line 269
    const-string/jumbo v2, "middle_name"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    .line 270
    const-string/jumbo v2, "last_name"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    .line 271
    const-string/jumbo v2, "name"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    .line 272
    const-string/jumbo v2, "link_uri"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "linkUriString":Ljava/lang/String;
    if-nez v0, :cond_3d

    :goto_3a
    iput-object v1, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    .line 274
    return-void

    .line 273
    :cond_3d
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_3a
.end method

.method public static fetchProfileForCurrentAccessToken()V
    .registers 3

    .prologue
    .line 80
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 81
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    if-nez v0, :cond_b

    .line 82
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/facebook/Profile;->setCurrentProfile(Lcom/facebook/Profile;)V

    .line 111
    :goto_a
    return-void

    .line 86
    :cond_b
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/Profile$1;

    invoke-direct {v2}, Lcom/facebook/Profile$1;-><init>()V

    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->getGraphMeRequestWithCacheAsync(Ljava/lang/String;Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;)V

    goto :goto_a
.end method

.method public static getCurrentProfile()Lcom/facebook/Profile;
    .registers 1

    .prologue
    .line 60
    invoke-static {}, Lcom/facebook/ProfileManager;->getInstance()Lcom/facebook/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ProfileManager;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v0

    return-object v0
.end method

.method public static setCurrentProfile(Lcom/facebook/Profile;)V
    .registers 2
    .param p0, "profile"    # Lcom/facebook/Profile;

    .prologue
    .line 71
    invoke-static {}, Lcom/facebook/ProfileManager;->getInstance()Lcom/facebook/ProfileManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/ProfileManager;->setCurrentProfile(Lcom/facebook/Profile;)V

    .line 72
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 207
    if-ne p0, p1, :cond_5

    .line 217
    :cond_4
    :goto_4
    return v1

    .line 211
    :cond_5
    instance-of v3, p1, Lcom/facebook/Profile;

    if-nez v3, :cond_b

    move v1, v2

    .line 212
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 215
    check-cast v0, Lcom/facebook/Profile;

    .line 217
    .local v0, "o":Lcom/facebook/Profile;
    iget-object v3, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    if-nez v3, :cond_22

    iget-object v3, v0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    :cond_22
    iget-object v3, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    if-nez v3, :cond_36

    iget-object v3, v0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    :cond_36
    iget-object v3, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    if-nez v3, :cond_4a

    iget-object v3, v0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4a
    iget-object v3, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    if-nez v3, :cond_5e

    iget-object v3, v0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    :cond_5e
    iget-object v3, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    iget-object v3, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    if-nez v3, :cond_72

    iget-object v3, v0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    :cond_72
    iget-object v1, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    iget-object v2, v0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4
.end method

.method public final getFirstName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLinkUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getMiddleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getProfilePictureUri(II)Landroid/net/Uri;
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/facebook/internal/ImageRequest;->getProfilePictureUri(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 229
    iget-object v1, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 230
    .local v0, "result":I
    iget-object v1, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 231
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 233
    :cond_16
    iget-object v1, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 234
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 236
    :cond_24
    iget-object v1, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    if-eqz v1, :cond_32

    .line 237
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 239
    :cond_32
    iget-object v1, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    if-eqz v1, :cond_40

    .line 240
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 242
    :cond_40
    iget-object v1, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    if-eqz v1, :cond_4e

    .line 243
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 246
    :cond_4e
    return v0
.end method

.method final toJSONObject()Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 250
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 252
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string/jumbo v1, "first_name"

    iget-object v2, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string/jumbo v1, "middle_name"

    iget-object v2, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string/jumbo v1, "last_name"

    iget-object v2, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    iget-object v1, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    if-eqz v1, :cond_3d

    .line 258
    const-string/jumbo v1, "link_uri"

    iget-object v2, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3d} :catch_3e

    .line 263
    :cond_3d
    :goto_3d
    return-object v0

    .line 261
    :catch_3e
    move-exception v1

    const/4 v0, 0x0

    goto :goto_3d
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    if-nez v0, :cond_22

    const/4 v0, 0x0

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    return-void

    .line 298
    :cond_22
    iget-object v0, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method
