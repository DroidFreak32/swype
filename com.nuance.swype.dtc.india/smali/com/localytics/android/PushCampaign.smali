.class public Lcom/localytics/android/PushCampaign;
.super Lcom/localytics/android/Campaign;
.source "PushCampaign.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/localytics/android/PushCampaign;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mControlGroup:Z

.field private final mCreativeId:J

.field private final mCreativeType:Ljava/lang/String;

.field private final mKillSwitch:I

.field private final mMessage:Ljava/lang/String;

.field private final mSoundFilename:Ljava/lang/String;

.field private final mTestMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/localytics/android/PushCampaign$1;

    invoke-direct {v0}, Lcom/localytics/android/PushCampaign$1;-><init>()V

    sput-object v0, Lcom/localytics/android/PushCampaign;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/localytics/android/Campaign;-><init>()V

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/localytics/android/PushCampaign;->mCampaignId:J

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/localytics/android/PushCampaign;->mCreativeId:J

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/PushCampaign;->mCreativeType:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/PushCampaign;->mMessage:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/PushCampaign;->mSoundFilename:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/localytics/android/PushCampaign;->mKillSwitch:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/localytics/android/PushCampaign;->mTestMode:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/PushCampaign;->mAbTest:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/localytics/android/PushCampaign;->mVersion:J

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/localytics/android/PushCampaign;->mControlGroup:Z

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/localytics/android/PushCampaign;->mSchemaVersion:J

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/PushCampaign;->mAttributes:Ljava/util/Map;

    .line 184
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/localytics/android/PushCampaign$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/localytics/android/PushCampaign$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/localytics/android/PushCampaign;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "soundURI"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 54
    invoke-direct {p0}, Lcom/localytics/android/Campaign;-><init>()V

    .line 55
    const-string/jumbo v1, "ll"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lorg/json/JSONException;

    const-string/jumbo v2, "\'ll\' key missing from push data"

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v1, "ll"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "llObject":Lorg/json/JSONObject;
    const-string/jumbo v1, "ca"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/localytics/android/PushCampaign;->mCampaignId:J

    .line 61
    const-string/jumbo v1, "v"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/localytics/android/PushCampaign;->mSchemaVersion:J

    .line 62
    iput-object p1, p0, Lcom/localytics/android/PushCampaign;->mMessage:Ljava/lang/String;

    .line 63
    const-string/jumbo v1, "cr"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/localytics/android/PushCampaign;->mCreativeId:J

    .line 64
    iget-wide v2, p0, Lcom/localytics/android/PushCampaign;->mCreativeId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/localytics/android/PushCampaign;->mAbTest:Ljava/lang/String;

    .line 65
    const-string/jumbo v1, "t"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/localytics/android/PushCampaign;->mCreativeType:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/localytics/android/PushCampaign;->mSoundFilename:Ljava/lang/String;

    .line 67
    const-string/jumbo v1, "Control"

    iget-object v2, p0, Lcom/localytics/android/PushCampaign;->mCreativeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/localytics/android/PushCampaign;->mControlGroup:Z

    .line 68
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/localytics/android/PushCampaign;->mKillSwitch:I

    .line 69
    const-string/jumbo v1, "test_mode"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/localytics/android/PushCampaign;->mTestMode:I

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/localytics/android/PushCampaign;->mAttributes:Ljava/util/Map;

    .line 71
    invoke-direct {p0, p3}, Lcom/localytics/android/PushCampaign;->populateAttributes(Landroid/os/Bundle;)V

    .line 72
    return-void
.end method

.method private populateAttributes(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 137
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    .local v1, "k":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 140
    .local v2, "v":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/lang/Number;

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 142
    :cond_1
    iget-object v3, p0, Lcom/localytics/android/PushCampaign;->mAttributes:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 145
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "v":Ljava/lang/Object;
    :cond_2
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public getCreativeId()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/localytics/android/PushCampaign;->mCreativeId:J

    return-wide v0
.end method

.method public getCreativeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/localytics/android/PushCampaign;->mCreativeType:Ljava/lang/String;

    return-object v0
.end method

.method protected getKillSwitch()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/localytics/android/PushCampaign;->mKillSwitch:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/localytics/android/PushCampaign;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/localytics/android/PushCampaign;->mSoundFilename:Ljava/lang/String;

    return-object v0
.end method

.method protected getTestMode()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/localytics/android/PushCampaign;->mTestMode:I

    return v0
.end method

.method isControlGroup()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/localytics/android/PushCampaign;->mControlGroup:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/localytics/android/PushCampaign;->mCampaignId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 157
    iget-wide v0, p0, Lcom/localytics/android/PushCampaign;->mCreativeId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 158
    iget-object v0, p0, Lcom/localytics/android/PushCampaign;->mCreativeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/localytics/android/PushCampaign;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/localytics/android/PushCampaign;->mSoundFilename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget v0, p0, Lcom/localytics/android/PushCampaign;->mKillSwitch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Lcom/localytics/android/PushCampaign;->mTestMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Lcom/localytics/android/PushCampaign;->mAbTest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-wide v0, p0, Lcom/localytics/android/PushCampaign;->mVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 165
    iget-boolean v0, p0, Lcom/localytics/android/PushCampaign;->mControlGroup:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-wide v0, p0, Lcom/localytics/android/PushCampaign;->mSchemaVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 167
    iget-object v0, p0, Lcom/localytics/android/PushCampaign;->mAttributes:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 168
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
