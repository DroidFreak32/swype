.class final Lcom/crashlytics/android/BuildIdValidator;
.super Ljava/lang/Object;
.source "BuildIdValidator.java"


# instance fields
.field final buildId:Ljava/lang/String;

.field final requiringBuildId:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "buildId"    # Ljava/lang/String;
    .param p2, "requiringBuildId"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/crashlytics/android/BuildIdValidator;->buildId:Ljava/lang/String;

    .line 25
    iput-boolean p2, p0, Lcom/crashlytics/android/BuildIdValidator;->requiringBuildId:Z

    .line 26
    return-void
.end method
