.class Lcom/localytics/android/InAppCampaign$Builder;
.super Ljava/lang/Object;
.source "InAppCampaign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/InAppCampaign;
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

.field mDisplayLocation:Ljava/lang/String;

.field mEventAttributes:Ljava/util/Map;
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

.field mRuleName:Ljava/lang/String;

.field mSchemaVersion:J

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

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-wide v2, p0, Lcom/localytics/android/InAppCampaign$Builder;->mCampaignId:J

    .line 65
    iput-wide v2, p0, Lcom/localytics/android/InAppCampaign$Builder;->mVersion:J

    .line 66
    iput-wide v2, p0, Lcom/localytics/android/InAppCampaign$Builder;->mSchemaVersion:J

    .line 67
    iput-object v0, p0, Lcom/localytics/android/InAppCampaign$Builder;->mAbTest:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/localytics/android/InAppCampaign$Builder;->mRuleName:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/localytics/android/InAppCampaign$Builder;->mDisplayLocation:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/InAppCampaign$Builder;->mEventAttributes:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/InAppCampaign$Builder;->mAttributes:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/InAppCampaign$Builder;->mWebViewAttributes:Ljava/util/Map;

    .line 76
    return-void
.end method


# virtual methods
.method build()Lcom/localytics/android/InAppCampaign;
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/localytics/android/InAppCampaign;

    invoke-direct {v0, p0}, Lcom/localytics/android/InAppCampaign;-><init>(Lcom/localytics/android/InAppCampaign$Builder;)V

    return-object v0
.end method

.method setAbTest(Ljava/lang/String;)Lcom/localytics/android/InAppCampaign$Builder;
    .locals 0
    .param p1, "abTest"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/localytics/android/InAppCampaign$Builder;->mAbTest:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method setAttributes(Ljava/util/Map;)Lcom/localytics/android/InAppCampaign$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/localytics/android/InAppCampaign$Builder;"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/localytics/android/InAppCampaign$Builder;->mAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 150
    :cond_0
    return-object p0
.end method

.method setCampaignId(J)Lcom/localytics/android/InAppCampaign$Builder;
    .locals 1
    .param p1, "campaignId"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/localytics/android/InAppCampaign$Builder;->mCampaignId:J

    .line 87
    return-object p0
.end method

.method setDisplayLocation(Ljava/lang/String;)Lcom/localytics/android/InAppCampaign$Builder;
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/localytics/android/InAppCampaign$Builder;->mDisplayLocation:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method setEventAttributes(Ljava/util/Map;)Lcom/localytics/android/InAppCampaign$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/localytics/android/InAppCampaign$Builder;"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/localytics/android/InAppCampaign$Builder;->mEventAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 136
    :cond_0
    return-object p0
.end method

.method setRuleName(Ljava/lang/String;)Lcom/localytics/android/InAppCampaign$Builder;
    .locals 0
    .param p1, "ruleName"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/localytics/android/InAppCampaign$Builder;->mRuleName:Ljava/lang/String;

    .line 105
    return-object p0
.end method

.method setSchemaVersion(J)Lcom/localytics/android/InAppCampaign$Builder;
    .locals 1
    .param p1, "schemaVersion"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/localytics/android/InAppCampaign$Builder;->mSchemaVersion:J

    .line 99
    return-object p0
.end method

.method setVersion(J)Lcom/localytics/android/InAppCampaign$Builder;
    .locals 1
    .param p1, "version"    # J

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/localytics/android/InAppCampaign$Builder;->mVersion:J

    .line 93
    return-object p0
.end method

.method setWebViewAttributes(Ljava/util/Map;)Lcom/localytics/android/InAppCampaign$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/localytics/android/InAppCampaign$Builder;"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "webViewAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/localytics/android/InAppCampaign$Builder;->mWebViewAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 164
    :cond_0
    return-object p0
.end method
