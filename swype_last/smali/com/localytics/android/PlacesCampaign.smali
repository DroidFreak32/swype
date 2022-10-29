.class public final Lcom/localytics/android/PlacesCampaign;
.super Lcom/localytics/android/Campaign;
.source "PlacesCampaign.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/PlacesCampaign$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/localytics/android/PlacesCampaign;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mControlGroup:Z

.field private mCreativeId:J

.field private mCreativeType:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mRegion:Lcom/localytics/android/Region;

.field private mSoundFilename:Ljava/lang/String;

.field private mTriggerEvent:Lcom/localytics/android/Region$Event;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 295
    new-instance v0, Lcom/localytics/android/PlacesCampaign$1;

    invoke-direct {v0}, Lcom/localytics/android/PlacesCampaign$1;-><init>()V

    sput-object v0, Lcom/localytics/android/PlacesCampaign;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/localytics/android/Campaign;-><init>()V

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/localytics/android/PlacesCampaign;->mCampaignId:J

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/localytics/android/PlacesCampaign;->mCreativeId:J

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mCreativeType:Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mMessage:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mSoundFilename:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mAbTest:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/localytics/android/PlacesCampaign;->mVersion:J

    .line 288
    const-class v0, Lcom/localytics/android/Region;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/Region;

    iput-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mRegion:Lcom/localytics/android/Region;

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/Region$Event;

    iput-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mTriggerEvent:Lcom/localytics/android/Region$Event;

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5b

    const/4 v0, 0x1

    :goto_4a
    iput-boolean v0, p0, Lcom/localytics/android/PlacesCampaign;->mControlGroup:Z

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/localytics/android/PlacesCampaign;->mSchemaVersion:J

    .line 292
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mAttributes:Ljava/util/Map;

    .line 293
    return-void

    .line 290
    :cond_5b
    const/4 v0, 0x0

    goto :goto_4a
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/localytics/android/PlacesCampaign$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/localytics/android/PlacesCampaign$1;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/localytics/android/PlacesCampaign;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/localytics/android/PlacesCampaign$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/localytics/android/PlacesCampaign$Builder;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/localytics/android/Campaign;-><init>()V

    .line 51
    iget-wide v0, p1, Lcom/localytics/android/PlacesCampaign$Builder;->mCampaignId:J

    iput-wide v0, p0, Lcom/localytics/android/PlacesCampaign;->mCampaignId:J

    .line 52
    iget-wide v0, p1, Lcom/localytics/android/PlacesCampaign$Builder;->mCreativeId:J

    iput-wide v0, p0, Lcom/localytics/android/PlacesCampaign;->mCreativeId:J

    .line 53
    iget-object v0, p1, Lcom/localytics/android/PlacesCampaign$Builder;->mCreativeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mCreativeType:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lcom/localytics/android/PlacesCampaign$Builder;->mMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mMessage:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/localytics/android/PlacesCampaign$Builder;->mSoundFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mSoundFilename:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/localytics/android/PlacesCampaign$Builder;->mRuleName:Ljava/lang/String;

    iput-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mRuleName:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/localytics/android/PlacesCampaign$Builder;->mAbTest:Ljava/lang/String;

    iput-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mAbTest:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Lcom/localytics/android/PlacesCampaign$Builder;->mRegion:Lcom/localytics/android/Region;

    iput-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mRegion:Lcom/localytics/android/Region;

    .line 59
    iget-object v0, p1, Lcom/localytics/android/PlacesCampaign$Builder;->mTriggerEvent:Lcom/localytics/android/Region$Event;

    iput-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mTriggerEvent:Lcom/localytics/android/Region$Event;

    .line 60
    iget-boolean v0, p1, Lcom/localytics/android/PlacesCampaign$Builder;->mControlGroup:Z

    iput-boolean v0, p0, Lcom/localytics/android/PlacesCampaign;->mControlGroup:Z

    .line 61
    iget-wide v0, p1, Lcom/localytics/android/PlacesCampaign$Builder;->mVersion:J

    iput-wide v0, p0, Lcom/localytics/android/PlacesCampaign;->mVersion:J

    .line 62
    iget-wide v0, p1, Lcom/localytics/android/PlacesCampaign$Builder;->mSchemaVersion:J

    iput-wide v0, p0, Lcom/localytics/android/PlacesCampaign;->mSchemaVersion:J

    .line 63
    iget-object v0, p1, Lcom/localytics/android/PlacesCampaign$Builder;->mAttributes:Ljava/util/Map;

    iput-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mAttributes:Ljava/util/Map;

    .line 64
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public final getCreativeId()J
    .registers 3

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/localytics/android/PlacesCampaign;->mCreativeId:J

    return-wide v0
.end method

.method public final getCreativeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mCreativeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegion()Lcom/localytics/android/Region;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mRegion:Lcom/localytics/android/Region;

    return-object v0
.end method

.method public final getSoundFilename()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mSoundFilename:Ljava/lang/String;

    return-object v0
.end method

.method public final getTriggerEvent()Lcom/localytics/android/Region$Event;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mTriggerEvent:Lcom/localytics/android/Region$Event;

    return-object v0
.end method

.method final isControlGroup()Z
    .registers 2

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/localytics/android/PlacesCampaign;->mControlGroup:Z

    return v0
.end method

.method protected final setCreativeType(Ljava/lang/String;)V
    .registers 2
    .param p1, "creativeType"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/localytics/android/PlacesCampaign;->mCreativeType:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/localytics/android/PlacesCampaign;->mCampaignId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 266
    iget-wide v0, p0, Lcom/localytics/android/PlacesCampaign;->mCreativeId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 267
    iget-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mCreativeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mSoundFilename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mAbTest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-wide v0, p0, Lcom/localytics/android/PlacesCampaign;->mVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 272
    iget-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mRegion:Lcom/localytics/android/Region;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 273
    iget-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mTriggerEvent:Lcom/localytics/android/Region$Event;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 274
    iget-boolean v0, p0, Lcom/localytics/android/PlacesCampaign;->mControlGroup:Z

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    :goto_32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget-wide v0, p0, Lcom/localytics/android/PlacesCampaign;->mSchemaVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 276
    iget-object v0, p0, Lcom/localytics/android/PlacesCampaign;->mAttributes:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 277
    return-void

    .line 274
    :cond_40
    const/4 v0, 0x0

    goto :goto_32
.end method
