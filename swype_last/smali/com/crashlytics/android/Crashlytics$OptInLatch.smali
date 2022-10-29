.class final Lcom/crashlytics/android/Crashlytics$OptInLatch;
.super Ljava/lang/Object;
.source "Crashlytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/Crashlytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptInLatch"
.end annotation


# instance fields
.field final latch:Ljava/util/concurrent/CountDownLatch;

.field send:Z

.field final synthetic this$0:Lcom/crashlytics/android/Crashlytics;


# direct methods
.method private constructor <init>(Lcom/crashlytics/android/Crashlytics;)V
    .registers 4

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics$OptInLatch;->this$0:Lcom/crashlytics/android/Crashlytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crashlytics/android/Crashlytics$OptInLatch;->send:Z

    .line 1118
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics$OptInLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/crashlytics/android/Crashlytics;B)V
    .registers 3
    .param p1, "x0"    # Lcom/crashlytics/android/Crashlytics;

    .prologue
    .line 1116
    invoke-direct {p0, p1}, Lcom/crashlytics/android/Crashlytics$OptInLatch;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    return-void
.end method


# virtual methods
.method final setOptIn(Z)V
    .registers 3
    .param p1, "optIn"    # Z

    .prologue
    .line 1121
    iput-boolean p1, p0, Lcom/crashlytics/android/Crashlytics$OptInLatch;->send:Z

    .line 1122
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$OptInLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1123
    return-void
.end method
