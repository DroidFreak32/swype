.class Lcom/localytics/android/CreativeDownloadTaskFactory;
.super Ljava/lang/Object;
.source "CreativeDownloadTaskFactory.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public creativeDownloadTask(Lcom/localytics/android/MarketingMessage;Lcom/localytics/android/ICreativeDownloadTask$Priority;ILcom/localytics/android/LocalyticsDao;Lcom/localytics/android/ICreativeDownloadTaskCallback;)Lcom/localytics/android/ICreativeDownloadTask;
    .registers 12
    .param p1, "campaign"    # Lcom/localytics/android/MarketingMessage;
    .param p2, "priority"    # Lcom/localytics/android/ICreativeDownloadTask$Priority;
    .param p3, "sequence"    # I
    .param p4, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p5, "callback"    # Lcom/localytics/android/ICreativeDownloadTaskCallback;

    .prologue
    .line 15
    new-instance v0, Lcom/localytics/android/CreativeDownloadTask;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/localytics/android/CreativeDownloadTask;-><init>(Lcom/localytics/android/MarketingMessage;Lcom/localytics/android/ICreativeDownloadTask$Priority;ILcom/localytics/android/LocalyticsDao;Lcom/localytics/android/ICreativeDownloadTaskCallback;)V

    return-object v0
.end method
