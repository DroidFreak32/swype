.class public final Lcom/localytics/android/InboxCampaign;
.super Lcom/localytics/android/WebViewCampaign;
.source "InboxCampaign.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/InboxCampaign$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/localytics/android/InboxCampaign;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCreativeUri:Landroid/net/Uri;

.field private mInboxId:J

.field private mLocalCreativeUri:Landroid/net/Uri;

.field private mLocalThumbnailUri:Landroid/net/Uri;

.field private mRead:Z

.field private mReceivedDate:J

.field private mSortOrder:J

.field private mSummary:Ljava/lang/String;

.field private mThumbnailUri:Landroid/net/Uri;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 402
    new-instance v0, Lcom/localytics/android/InboxCampaign$1;

    invoke-direct {v0}, Lcom/localytics/android/InboxCampaign$1;-><init>()V

    sput-object v0, Lcom/localytics/android/InboxCampaign;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/localytics/android/WebViewCampaign;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use InboxCampaign.Builder to create instances"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 382
    invoke-direct {p0}, Lcom/localytics/android/WebViewCampaign;-><init>()V

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/localytics/android/InboxCampaign;->mInboxId:J

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_76

    :goto_11
    iput-boolean v0, p0, Lcom/localytics/android/InboxCampaign;->mRead:Z

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/InboxCampaign;->mTitle:Ljava/lang/String;

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/InboxCampaign;->mSummary:Ljava/lang/String;

    .line 387
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/localytics/android/InboxCampaign;->mThumbnailUri:Landroid/net/Uri;

    .line 388
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/localytics/android/InboxCampaign;->mLocalThumbnailUri:Landroid/net/Uri;

    .line 389
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/localytics/android/InboxCampaign;->mCreativeUri:Landroid/net/Uri;

    .line 390
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/localytics/android/InboxCampaign;->mLocalCreativeUri:Landroid/net/Uri;

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/localytics/android/InboxCampaign;->mCampaignId:J

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/InboxCampaign;->mAbTest:Ljava/lang/String;

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/localytics/android/InboxCampaign;->mVersion:J

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/localytics/android/InboxCampaign;->mReceivedDate:J

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/localytics/android/InboxCampaign;->mSortOrder:J

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/localytics/android/InboxCampaign;->mSchemaVersion:J

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/InboxCampaign;->mRuleName:Ljava/lang/String;

    .line 398
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/InboxCampaign;->mAttributes:Ljava/util/Map;

    .line 399
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/InboxCampaign;->mWebViewAttributes:Ljava/util/Map;

    .line 400
    return-void

    .line 384
    :cond_76
    const/4 v0, 0x0

    goto :goto_11
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/localytics/android/InboxCampaign$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/localytics/android/InboxCampaign$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/localytics/android/InboxCampaign;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/localytics/android/InboxCampaign$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/localytics/android/InboxCampaign$Builder;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/localytics/android/WebViewCampaign;-><init>()V

    .line 52
    iget-wide v0, p1, Lcom/localytics/android/InboxCampaign$Builder;->mCampaignId:J

    iput-wide v0, p0, Lcom/localytics/android/InboxCampaign;->mCampaignId:J

    .line 53
    iget-wide v0, p1, Lcom/localytics/android/InboxCampaign$Builder;->mInboxId:J

    iput-wide v0, p0, Lcom/localytics/android/InboxCampaign;->mInboxId:J

    .line 54
    iget-boolean v0, p1, Lcom/localytics/android/InboxCampaign$Builder;->mRead:Z

    iput-boolean v0, p0, Lcom/localytics/android/InboxCampaign;->mRead:Z

    .line 55
    iget-object v0, p1, Lcom/localytics/android/InboxCampaign$Builder;->mRuleName:Ljava/lang/String;

    iput-object v0, p0, Lcom/localytics/android/InboxCampaign;->mRuleName:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/localytics/android/InboxCampaign$Builder;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/localytics/android/InboxCampaign;->mTitle:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/localytics/android/InboxCampaign$Builder;->mSummary:Ljava/lang/String;

    iput-object v0, p0, Lcom/localytics/android/InboxCampaign;->mSummary:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Lcom/localytics/android/InboxCampaign$Builder;->mThumbnailUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/localytics/android/InboxCampaign;->mThumbnailUri:Landroid/net/Uri;

    .line 59
    iget-object v0, p1, Lcom/localytics/android/InboxCampaign$Builder;->mCreativeUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/localytics/android/InboxCampaign;->mCreativeUri:Landroid/net/Uri;

    .line 60
    iget-object v0, p1, Lcom/localytics/android/InboxCampaign$Builder;->mLocalThumbnailUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/localytics/android/InboxCampaign;->mLocalThumbnailUri:Landroid/net/Uri;

    .line 61
    iget-object v0, p1, Lcom/localytics/android/InboxCampaign$Builder;->mLocalCreativeUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/localytics/android/InboxCampaign;->mLocalCreativeUri:Landroid/net/Uri;

    .line 62
    iget-object v0, p1, Lcom/localytics/android/InboxCampaign$Builder;->mAbTest:Ljava/lang/String;

    iput-object v0, p0, Lcom/localytics/android/InboxCampaign;->mAbTest:Ljava/lang/String;

    .line 63
    iget-wide v0, p1, Lcom/localytics/android/InboxCampaign$Builder;->mSortOrder:J

    iput-wide v0, p0, Lcom/localytics/android/InboxCampaign;->mSortOrder:J

    .line 64
    iget-wide v0, p1, Lcom/localytics/android/InboxCampaign$Builder;->mVersion:J

    iput-wide v0, p0, Lcom/localytics/android/InboxCampaign;->mVersion:J

    .line 65
    iget-wide v0, p1, Lcom/localytics/android/InboxCampaign$Builder;->mReceivedDate:J

    iput-wide v0, p0, Lcom/localytics/android/InboxCampaign;->mReceivedDate:J

    .line 66
    iget-wide v0, p1, Lcom/localytics/android/InboxCampaign$Builder;->mSchemaVersion:J

    iput-wide v0, p0, Lcom/localytics/android/InboxCampaign;->mSchemaVersion:J

    .line 67
    iget-object v0, p1, Lcom/localytics/android/InboxCampaign$Builder;->mAttributes:Ljava/util/Map;

    iput-object v0, p0, Lcom/localytics/android/InboxCampaign;->mAttributes:Ljava/util/Map;

    .line 68
    iget-object v0, p1, Lcom/localytics/android/InboxCampaign$Builder;->mWebViewAttributes:Ljava/util/Map;

    iput-object v0, p0, Lcom/localytics/android/InboxCampaign;->mWebViewAttributes:Ljava/util/Map;

    .line 69
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method protected final getCreativeUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/localytics/android/InboxCampaign;->mCreativeUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected final getInboxId()J
    .registers 3

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/localytics/android/InboxCampaign;->mInboxId:J

    return-wide v0
.end method

.method protected final getLocalCreativeUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/localytics/android/InboxCampaign;->mLocalCreativeUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected final getLocalThumbnailUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/localytics/android/InboxCampaign;->mLocalThumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getReceivedDate()Ljava/util/Date;
    .registers 5

    .prologue
    .line 133
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/localytics/android/InboxCampaign;->mReceivedDate:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public final getSortOrder()J
    .registers 3

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/localytics/android/InboxCampaign;->mSortOrder:J

    return-wide v0
.end method

.method public final getSummary()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/localytics/android/InboxCampaign;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public final getThumbnailUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/localytics/android/InboxCampaign;->mThumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/localytics/android/InboxCampaign;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final hasCreative()Z
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/localytics/android/InboxCampaign;->mLocalCreativeUri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final hasThumbnail()Z
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/localytics/android/InboxCampaign;->mThumbnailUri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final isRead()Z
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/localytics/android/InboxCampaign;->mRead:Z

    return v0
.end method

.method public final setRead(Z)V
    .registers 4
    .param p1, "read"    # Z

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/localytics/android/InboxCampaign;->mRead:Z

    if-eq p1, v0, :cond_9

    .line 102
    iget-wide v0, p0, Lcom/localytics/android/InboxCampaign;->mCampaignId:J

    invoke-static {v0, v1, p1}, Lcom/localytics/android/Localytics;->setInboxCampaignRead(JZ)V

    .line 104
    :cond_9
    iput-boolean p1, p0, Lcom/localytics/android/InboxCampaign;->mRead:Z

    .line 105
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 362
    iget-wide v0, p0, Lcom/localytics/android/InboxCampaign;->mInboxId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 363
    iget-boolean v0, p0, Lcom/localytics/android/InboxCampaign;->mRead:Z

    if-eqz v0, :cond_59

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget-object v0, p0, Lcom/localytics/android/InboxCampaign;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/localytics/android/InboxCampaign;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/localytics/android/InboxCampaign;->mThumbnailUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lcom/localytics/android/InboxCampaign;->mLocalThumbnailUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 368
    iget-object v0, p0, Lcom/localytics/android/InboxCampaign;->mCreativeUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lcom/localytics/android/InboxCampaign;->mLocalCreativeUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 370
    iget-wide v0, p0, Lcom/localytics/android/InboxCampaign;->mCampaignId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 371
    iget-object v0, p0, Lcom/localytics/android/InboxCampaign;->mAbTest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    iget-wide v0, p0, Lcom/localytics/android/InboxCampaign;->mVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 373
    iget-wide v0, p0, Lcom/localytics/android/InboxCampaign;->mReceivedDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 374
    iget-wide v0, p0, Lcom/localytics/android/InboxCampaign;->mSortOrder:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 375
    iget-wide v0, p0, Lcom/localytics/android/InboxCampaign;->mSchemaVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 376
    iget-object v0, p0, Lcom/localytics/android/InboxCampaign;->mRuleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/localytics/android/InboxCampaign;->mAttributes:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 378
    iget-object v0, p0, Lcom/localytics/android/InboxCampaign;->mWebViewAttributes:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 379
    return-void

    .line 363
    :cond_59
    const/4 v0, 0x0

    goto :goto_a
.end method
