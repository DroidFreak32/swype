.class final Lcom/localytics/android/InAppCampaign;
.super Lcom/localytics/android/WebViewCampaign;
.source "InAppCampaign.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/InAppCampaign$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/localytics/android/InAppCampaign;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDisplayLocation:Ljava/lang/String;

.field private mEventAttributes:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/localytics/android/InAppCampaign$1;

    invoke-direct {v0}, Lcom/localytics/android/InAppCampaign$1;-><init>()V

    sput-object v0, Lcom/localytics/android/InAppCampaign;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/localytics/android/WebViewCampaign;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use InAppCampaign.Builder to create instances"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 195
    invoke-direct {p0}, Lcom/localytics/android/WebViewCampaign;-><init>()V

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/InAppCampaign;->mDisplayLocation:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/InAppCampaign;->mAbTest:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/InAppCampaign;->mRuleName:Ljava/lang/String;

    .line 199
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/InAppCampaign;->mEventAttributes:Ljava/util/Map;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/localytics/android/InAppCampaign;->mCampaignId:J

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/localytics/android/InAppCampaign;->mVersion:J

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/localytics/android/InAppCampaign;->mSchemaVersion:J

    .line 203
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/InAppCampaign;->mAttributes:Ljava/util/Map;

    .line 204
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/InAppCampaign;->mWebViewAttributes:Ljava/util/Map;

    .line 205
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/localytics/android/InAppCampaign$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/localytics/android/InAppCampaign$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/localytics/android/InAppCampaign;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/localytics/android/InAppCampaign$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/localytics/android/InAppCampaign$Builder;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/localytics/android/WebViewCampaign;-><init>()V

    .line 28
    iget-wide v0, p1, Lcom/localytics/android/InAppCampaign$Builder;->mCampaignId:J

    iput-wide v0, p0, Lcom/localytics/android/InAppCampaign;->mCampaignId:J

    .line 29
    iget-wide v0, p1, Lcom/localytics/android/InAppCampaign$Builder;->mVersion:J

    iput-wide v0, p0, Lcom/localytics/android/InAppCampaign;->mVersion:J

    .line 30
    iget-wide v0, p1, Lcom/localytics/android/InAppCampaign$Builder;->mSchemaVersion:J

    iput-wide v0, p0, Lcom/localytics/android/InAppCampaign;->mSchemaVersion:J

    .line 31
    iget-object v0, p1, Lcom/localytics/android/InAppCampaign$Builder;->mAbTest:Ljava/lang/String;

    iput-object v0, p0, Lcom/localytics/android/InAppCampaign;->mAbTest:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/localytics/android/InAppCampaign$Builder;->mRuleName:Ljava/lang/String;

    iput-object v0, p0, Lcom/localytics/android/InAppCampaign;->mRuleName:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/localytics/android/InAppCampaign$Builder;->mDisplayLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/localytics/android/InAppCampaign;->mDisplayLocation:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/localytics/android/InAppCampaign$Builder;->mEventAttributes:Ljava/util/Map;

    iput-object v0, p0, Lcom/localytics/android/InAppCampaign;->mEventAttributes:Ljava/util/Map;

    .line 35
    iget-object v0, p1, Lcom/localytics/android/InAppCampaign$Builder;->mAttributes:Ljava/util/Map;

    iput-object v0, p0, Lcom/localytics/android/InAppCampaign;->mAttributes:Ljava/util/Map;

    .line 36
    iget-object v0, p1, Lcom/localytics/android/InAppCampaign$Builder;->mWebViewAttributes:Ljava/util/Map;

    iput-object v0, p0, Lcom/localytics/android/InAppCampaign;->mWebViewAttributes:Ljava/util/Map;

    .line 37
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method final getDisplayLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/localytics/android/InAppCampaign;->mDisplayLocation:Ljava/lang/String;

    return-object v0
.end method

.method final getEventAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/localytics/android/InAppCampaign;->mEventAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/localytics/android/InAppCampaign;->mDisplayLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/localytics/android/InAppCampaign;->mAbTest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/localytics/android/InAppCampaign;->mRuleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/localytics/android/InAppCampaign;->mEventAttributes:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 187
    iget-wide v0, p0, Lcom/localytics/android/InAppCampaign;->mCampaignId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 188
    iget-wide v0, p0, Lcom/localytics/android/InAppCampaign;->mVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 189
    iget-wide v0, p0, Lcom/localytics/android/InAppCampaign;->mSchemaVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 190
    iget-object v0, p0, Lcom/localytics/android/InAppCampaign;->mAttributes:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 191
    iget-object v0, p0, Lcom/localytics/android/InAppCampaign;->mWebViewAttributes:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 192
    return-void
.end method
