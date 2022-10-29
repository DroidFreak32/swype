.class final Lcom/crashlytics/android/CreateReportRequest;
.super Ljava/lang/Object;
.source "CreateReportRequest.java"


# instance fields
.field public final apiKey:Ljava/lang/String;

.field public final report:Lcom/crashlytics/android/Report;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/crashlytics/android/Report;)V
    .registers 3
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "report"    # Lcom/crashlytics/android/Report;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/crashlytics/android/CreateReportRequest;->apiKey:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/crashlytics/android/CreateReportRequest;->report:Lcom/crashlytics/android/Report;

    .line 16
    return-void
.end method
