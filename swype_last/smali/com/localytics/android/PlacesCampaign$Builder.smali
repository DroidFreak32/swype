.class Lcom/localytics/android/PlacesCampaign$Builder;
.super Ljava/lang/Object;
.source "PlacesCampaign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/PlacesCampaign;
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

.field mControlGroup:Z

.field mCreativeId:J

.field mCreativeType:Ljava/lang/String;

.field mMessage:Ljava/lang/String;

.field mRegion:Lcom/localytics/android/Region;

.field mRuleName:Ljava/lang/String;

.field mSchemaVersion:J

.field mSoundFilename:Ljava/lang/String;

.field mTriggerEvent:Lcom/localytics/android/Region$Event;

.field mVersion:J


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/PlacesCampaign$Builder;->mAbTest:Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/PlacesCampaign$Builder;->mAttributes:Ljava/util/Map;

    .line 167
    return-void
.end method


# virtual methods
.method build()Lcom/localytics/android/PlacesCampaign;
    .registers 2

    .prologue
    .line 252
    new-instance v0, Lcom/localytics/android/PlacesCampaign;

    invoke-direct {v0, p0}, Lcom/localytics/android/PlacesCampaign;-><init>(Lcom/localytics/android/PlacesCampaign$Builder;)V

    return-object v0
.end method

.method setAbTest(Ljava/lang/String;)Lcom/localytics/android/PlacesCampaign$Builder;
    .registers 2
    .param p1, "abTest"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/localytics/android/PlacesCampaign$Builder;->mAbTest:Ljava/lang/String;

    .line 226
    return-object p0
.end method

.method setAttributes(Ljava/util/Map;)Lcom/localytics/android/PlacesCampaign$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/localytics/android/PlacesCampaign$Builder;"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 245
    iget-object v0, p0, Lcom/localytics/android/PlacesCampaign$Builder;->mAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 247
    :cond_d
    return-object p0
.end method

.method setCampaignId(J)Lcom/localytics/android/PlacesCampaign$Builder;
    .registers 4
    .param p1, "campaignId"    # J

    .prologue
    .line 171
    iput-wide p1, p0, Lcom/localytics/android/PlacesCampaign$Builder;->mCampaignId:J

    .line 172
    return-object p0
.end method

.method setControlGroup(Z)Lcom/localytics/android/PlacesCampaign$Builder;
    .registers 2
    .param p1, "controlGroup"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/localytics/android/PlacesCampaign$Builder;->mControlGroup:Z

    .line 220
    return-object p0
.end method

.method setCreativeId(J)Lcom/localytics/android/PlacesCampaign$Builder;
    .registers 4
    .param p1, "creativeId"    # J

    .prologue
    .line 183
    iput-wide p1, p0, Lcom/localytics/android/PlacesCampaign$Builder;->mCreativeId:J

    .line 184
    return-object p0
.end method

.method setCreativeType(Ljava/lang/String;)Lcom/localytics/android/PlacesCampaign$Builder;
    .registers 2
    .param p1, "creativeType"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/localytics/android/PlacesCampaign$Builder;->mCreativeType:Ljava/lang/String;

    .line 190
    return-object p0
.end method

.method setMessage(Ljava/lang/String;)Lcom/localytics/android/PlacesCampaign$Builder;
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/localytics/android/PlacesCampaign$Builder;->mMessage:Ljava/lang/String;

    .line 196
    return-object p0
.end method

.method setRegion(Lcom/localytics/android/Region;)Lcom/localytics/android/PlacesCampaign$Builder;
    .registers 2
    .param p1, "region"    # Lcom/localytics/android/Region;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/localytics/android/PlacesCampaign$Builder;->mRegion:Lcom/localytics/android/Region;

    .line 208
    return-object p0
.end method

.method setRuleName(Ljava/lang/String;)Lcom/localytics/android/PlacesCampaign$Builder;
    .registers 2
    .param p1, "ruleName"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/localytics/android/PlacesCampaign$Builder;->mRuleName:Ljava/lang/String;

    .line 178
    return-object p0
.end method

.method setSchemaVersion(J)Lcom/localytics/android/PlacesCampaign$Builder;
    .registers 4
    .param p1, "schemaVersion"    # J

    .prologue
    .line 237
    iput-wide p1, p0, Lcom/localytics/android/PlacesCampaign$Builder;->mSchemaVersion:J

    .line 238
    return-object p0
.end method

.method setSoundFilename(Ljava/lang/String;)Lcom/localytics/android/PlacesCampaign$Builder;
    .registers 2
    .param p1, "soundFilename"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/localytics/android/PlacesCampaign$Builder;->mSoundFilename:Ljava/lang/String;

    .line 202
    return-object p0
.end method

.method setTriggerEvent(Lcom/localytics/android/Region$Event;)Lcom/localytics/android/PlacesCampaign$Builder;
    .registers 2
    .param p1, "event"    # Lcom/localytics/android/Region$Event;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/localytics/android/PlacesCampaign$Builder;->mTriggerEvent:Lcom/localytics/android/Region$Event;

    .line 214
    return-object p0
.end method

.method setVersion(J)Lcom/localytics/android/PlacesCampaign$Builder;
    .registers 4
    .param p1, "version"    # J

    .prologue
    .line 231
    iput-wide p1, p0, Lcom/localytics/android/PlacesCampaign$Builder;->mVersion:J

    .line 232
    return-object p0
.end method
