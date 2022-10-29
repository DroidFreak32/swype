.class final Lcom/localytics/android/ReferralUploader;
.super Lcom/localytics/android/BaseUploadThread;
.source "ReferralUploader.java"


# instance fields
.field private mFirstSessionEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V
    .registers 6
    .param p1, "sessionHandler"    # Lcom/localytics/android/AnalyticsHandler;
    .param p2, "customerId"    # Ljava/lang/String;
    .param p3, "firstSessionEvent"    # Ljava/lang/String;
    .param p4, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 9
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p4}, Lcom/localytics/android/BaseUploadThread;-><init>(Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap;Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V

    .line 10
    iput-object p3, p0, Lcom/localytics/android/ReferralUploader;->mFirstSessionEvent:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/localytics/android/ReferralUploader;->uploadData()I

    .line 31
    return-void
.end method

.method final uploadData()I
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    iget-object v0, p0, Lcom/localytics/android/ReferralUploader;->mFirstSessionEvent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[REFERRAL] reupload first session: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/localytics/android/ReferralUploader;->mFirstSessionEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->i(Ljava/lang/String;)I

    .line 19
    invoke-virtual {p0}, Lcom/localytics/android/ReferralUploader;->getApiKey()Ljava/lang/String;

    move-result-object v6

    .line 20
    .local v6, "apiKey":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/localytics/android/Constants;->getHTTPPreface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%s/api/v2/applications/%s/uploads"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v7, Lcom/localytics/android/Constants;->ANALYTICS_HOST:Ljava/lang/String;

    aput-object v7, v3, v4

    aput-object v6, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, "url":Ljava/lang/String;
    sget-object v1, Lcom/localytics/android/BaseUploadThread$UploadType;->ANALYTICS:Lcom/localytics/android/BaseUploadThread$UploadType;

    iget-object v3, p0, Lcom/localytics/android/ReferralUploader;->mFirstSessionEvent:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/ReferralUploader;->upload(Lcom/localytics/android/BaseUploadThread$UploadType;Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 24
    .end local v2    # "url":Ljava/lang/String;
    .end local v6    # "apiKey":Ljava/lang/String;
    :cond_50
    return v4
.end method
