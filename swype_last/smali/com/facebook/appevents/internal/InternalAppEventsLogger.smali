.class Lcom/facebook/appevents/internal/InternalAppEventsLogger;
.super Lcom/facebook/appevents/AppEventsLogger;
.source "InternalAppEventsLogger.java"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .registers 4
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "accessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 34
    return-void
.end method
