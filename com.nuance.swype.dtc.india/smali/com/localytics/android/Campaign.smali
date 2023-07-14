.class public abstract Lcom/localytics/android/Campaign;
.super Ljava/lang/Object;
.source "Campaign.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAbTest:Ljava/lang/String;

.field protected mAttributes:Ljava/util/Map;
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

.field protected mCampaignId:J

.field protected mRuleName:Ljava/lang/String;

.field protected mSchemaVersion:J

.field protected mVersion:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAbTest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/localytics/android/Campaign;->mAbTest:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributes()Ljava/util/Map;
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
    .line 47
    iget-object v0, p0, Lcom/localytics/android/Campaign;->mAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public getCampaignId()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/localytics/android/Campaign;->mCampaignId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/localytics/android/Campaign;->getRuleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/localytics/android/Campaign;->mRuleName:Ljava/lang/String;

    return-object v0
.end method

.method protected getSchemaVersion()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/localytics/android/Campaign;->mSchemaVersion:J

    return-wide v0
.end method

.method protected getVersion()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/localytics/android/Campaign;->mVersion:J

    return-wide v0
.end method
