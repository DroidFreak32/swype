.class public final Lcom/crashlytics/android/internal/models/SignalData;
.super Ljava/lang/Object;
.source "SignalData.java"


# instance fields
.field public final code:Ljava/lang/String;

.field public final faultAddress:J

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/crashlytics/android/internal/models/SignalData;->name:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/crashlytics/android/internal/models/SignalData;->code:Ljava/lang/String;

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/crashlytics/android/internal/models/SignalData;->faultAddress:J

    .line 27
    return-void
.end method
