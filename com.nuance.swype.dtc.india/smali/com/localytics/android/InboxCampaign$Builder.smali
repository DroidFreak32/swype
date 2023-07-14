.class Lcom/localytics/android/InboxCampaign$Builder;
.super Ljava/lang/Object;
.source "InboxCampaign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/InboxCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field mAbTest:Ljava/lang/String;

.field mAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCampaignId:J

.field mCreativeUri:Landroid/net/Uri;

.field mInboxId:J

.field mLocalCreativeUri:Landroid/net/Uri;

.field mLocalThumbnailUri:Landroid/net/Uri;

.field mRead:Z

.field mReceivedDate:J

.field mRuleName:Ljava/lang/String;

.field mSchemaVersion:J

.field mSortOrder:J

.field mSummary:Ljava/lang/String;

.field mThumbnailUri:Landroid/net/Uri;

.field mTitle:Ljava/lang/String;

.field mVersion:J

.field mWebViewAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-wide v2, p0, Lcom/localytics/android/InboxCampaign$Builder;->mCampaignId:J

    .line 212
    iput-wide v2, p0, Lcom/localytics/android/InboxCampaign$Builder;->mInboxId:J

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/localytics/android/InboxCampaign$Builder;->mRead:Z

    .line 214
    iput-object v1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mRuleName:Ljava/lang/String;

    .line 215
    iput-object v1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mTitle:Ljava/lang/String;

    .line 216
    iput-object v1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mSummary:Ljava/lang/String;

    .line 217
    iput-object v1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mThumbnailUri:Landroid/net/Uri;

    .line 218
    iput-object v1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mCreativeUri:Landroid/net/Uri;

    .line 219
    iput-object v1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mLocalThumbnailUri:Landroid/net/Uri;

    .line 220
    iput-object v1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mLocalCreativeUri:Landroid/net/Uri;

    .line 221
    iput-object v1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mAbTest:Ljava/lang/String;

    .line 222
    iput-wide v2, p0, Lcom/localytics/android/InboxCampaign$Builder;->mVersion:J

    .line 223
    iput-wide v2, p0, Lcom/localytics/android/InboxCampaign$Builder;->mReceivedDate:J

    .line 224
    iput-wide v2, p0, Lcom/localytics/android/InboxCampaign$Builder;->mSortOrder:J

    .line 225
    iput-wide v2, p0, Lcom/localytics/android/InboxCampaign$Builder;->mSchemaVersion:J

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/InboxCampaign$Builder;->mAttributes:Ljava/util/Map;

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/InboxCampaign$Builder;->mWebViewAttributes:Ljava/util/Map;

    .line 231
    return-void
.end method


# virtual methods
.method build()Lcom/localytics/android/InboxCampaign;
    .locals 1

    .prologue
    .line 349
    new-instance v0, Lcom/localytics/android/InboxCampaign;

    invoke-direct {v0, p0}, Lcom/localytics/android/InboxCampaign;-><init>(Lcom/localytics/android/InboxCampaign$Builder;)V

    return-object v0
.end method

.method setAbTest(Ljava/lang/String;)Lcom/localytics/android/InboxCampaign$Builder;
    .locals 0
    .param p1, "abTest"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mAbTest:Ljava/lang/String;

    .line 296
    return-object p0
.end method

.method setAttributes(Ljava/util/Map;)Lcom/localytics/android/InboxCampaign$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/localytics/android/InboxCampaign$Builder;"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/localytics/android/InboxCampaign$Builder;->mAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 329
    :cond_0
    return-object p0
.end method

.method setCampaignId(J)Lcom/localytics/android/InboxCampaign$Builder;
    .locals 1
    .param p1, "campaignId"    # J

    .prologue
    .line 235
    iput-wide p1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mCampaignId:J

    .line 236
    return-object p0
.end method

.method setCreativeUri(Landroid/net/Uri;)Lcom/localytics/android/InboxCampaign$Builder;
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mCreativeUri:Landroid/net/Uri;

    .line 278
    return-object p0
.end method

.method setInboxId(J)Lcom/localytics/android/InboxCampaign$Builder;
    .locals 1
    .param p1, "inboxId"    # J

    .prologue
    .line 241
    iput-wide p1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mInboxId:J

    .line 242
    return-object p0
.end method

.method setLocalCreativeUri(Landroid/net/Uri;)Lcom/localytics/android/InboxCampaign$Builder;
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mLocalCreativeUri:Landroid/net/Uri;

    .line 290
    return-object p0
.end method

.method setLocalThumbnailUri(Landroid/net/Uri;)Lcom/localytics/android/InboxCampaign$Builder;
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mLocalThumbnailUri:Landroid/net/Uri;

    .line 284
    return-object p0
.end method

.method setRead(Z)Lcom/localytics/android/InboxCampaign$Builder;
    .locals 0
    .param p1, "read"    # Z

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mRead:Z

    .line 248
    return-object p0
.end method

.method setReceivedDate(J)Lcom/localytics/android/InboxCampaign$Builder;
    .locals 1
    .param p1, "receivedDate"    # J

    .prologue
    .line 307
    iput-wide p1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mReceivedDate:J

    .line 308
    return-object p0
.end method

.method setRuleName(Ljava/lang/String;)Lcom/localytics/android/InboxCampaign$Builder;
    .locals 0
    .param p1, "ruleName"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mRuleName:Ljava/lang/String;

    .line 254
    return-object p0
.end method

.method setSchemaVersion(J)Lcom/localytics/android/InboxCampaign$Builder;
    .locals 1
    .param p1, "schemaVersion"    # J

    .prologue
    .line 319
    iput-wide p1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mSchemaVersion:J

    .line 320
    return-object p0
.end method

.method setSortOrder(J)Lcom/localytics/android/InboxCampaign$Builder;
    .locals 1
    .param p1, "sortOrder"    # J

    .prologue
    .line 313
    iput-wide p1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mSortOrder:J

    .line 314
    return-object p0
.end method

.method setSummary(Ljava/lang/String;)Lcom/localytics/android/InboxCampaign$Builder;
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mSummary:Ljava/lang/String;

    .line 266
    return-object p0
.end method

.method setThumbnailUri(Landroid/net/Uri;)Lcom/localytics/android/InboxCampaign$Builder;
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mThumbnailUri:Landroid/net/Uri;

    .line 272
    return-object p0
.end method

.method setTitle(Ljava/lang/String;)Lcom/localytics/android/InboxCampaign$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mTitle:Ljava/lang/String;

    .line 260
    return-object p0
.end method

.method setVersion(J)Lcom/localytics/android/InboxCampaign$Builder;
    .locals 1
    .param p1, "version"    # J

    .prologue
    .line 301
    iput-wide p1, p0, Lcom/localytics/android/InboxCampaign$Builder;->mVersion:J

    .line 302
    return-object p0
.end method

.method setWebViewAttributes(Ljava/util/Map;)Lcom/localytics/android/InboxCampaign$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/localytics/android/InboxCampaign$Builder;"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "webViewAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/localytics/android/InboxCampaign$Builder;->mWebViewAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 343
    :cond_0
    return-object p0
.end method
