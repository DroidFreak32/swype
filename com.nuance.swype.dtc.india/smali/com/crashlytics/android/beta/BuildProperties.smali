.class final Lcom/crashlytics/android/beta/BuildProperties;
.super Ljava/lang/Object;
.source "BuildProperties.java"


# instance fields
.field public final buildId:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final versionCode:Ljava/lang/String;

.field public final versionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # Ljava/lang/String;
    .param p2, "versionName"    # Ljava/lang/String;
    .param p3, "buildId"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/crashlytics/android/beta/BuildProperties;->versionCode:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/crashlytics/android/beta/BuildProperties;->versionName:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/crashlytics/android/beta/BuildProperties;->buildId:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/crashlytics/android/beta/BuildProperties;->packageName:Ljava/lang/String;

    .line 23
    return-void
.end method
