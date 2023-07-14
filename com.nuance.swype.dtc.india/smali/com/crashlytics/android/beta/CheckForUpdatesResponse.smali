.class final Lcom/crashlytics/android/beta/CheckForUpdatesResponse;
.super Ljava/lang/Object;
.source "CheckForUpdatesResponse.java"


# instance fields
.field public final buildVersion:Ljava/lang/String;

.field public final displayVersion:Ljava/lang/String;

.field public final instanceId:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final url:Ljava/lang/String;

.field public final versionString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "versionString"    # Ljava/lang/String;
    .param p3, "displayVersion"    # Ljava/lang/String;
    .param p4, "buildVersion"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/crashlytics/android/beta/CheckForUpdatesResponse;->url:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/crashlytics/android/beta/CheckForUpdatesResponse;->versionString:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/crashlytics/android/beta/CheckForUpdatesResponse;->displayVersion:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/crashlytics/android/beta/CheckForUpdatesResponse;->buildVersion:Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lcom/crashlytics/android/beta/CheckForUpdatesResponse;->packageName:Ljava/lang/String;

    .line 18
    iput-object p6, p0, Lcom/crashlytics/android/beta/CheckForUpdatesResponse;->instanceId:Ljava/lang/String;

    .line 19
    return-void
.end method
