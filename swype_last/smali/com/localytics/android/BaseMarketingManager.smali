.class abstract Lcom/localytics/android/BaseMarketingManager;
.super Ljava/lang/Object;
.source "BaseMarketingManager.java"


# instance fields
.field protected mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

.field protected mProvider:Lcom/localytics/android/BaseProvider;


# direct methods
.method public constructor <init>(Lcom/localytics/android/LocalyticsDao;)V
    .registers 2
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/localytics/android/BaseMarketingManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    .line 12
    return-void
.end method


# virtual methods
.method public setProvider(Lcom/localytics/android/BaseProvider;)V
    .registers 2
    .param p1, "provider"    # Lcom/localytics/android/BaseProvider;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/localytics/android/BaseMarketingManager;->mProvider:Lcom/localytics/android/BaseProvider;

    .line 17
    return-void
.end method
