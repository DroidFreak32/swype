.class final Lcom/crashlytics/android/Crashlytics$4;
.super Ljava/lang/Object;
.source "Crashlytics.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/Crashlytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/Crashlytics;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/Crashlytics;)V
    .registers 2

    .prologue
    .line 880
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics$4;->this$0:Lcom/crashlytics/android/Crashlytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 880
    .line 1883
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$4;->this$0:Lcom/crashlytics/android/Crashlytics;

    # getter for: Lcom/crashlytics/android/Crashlytics;->initializationMarkerFile:Ljava/io/File;
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->access$000(Lcom/crashlytics/android/Crashlytics;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 880
    return-object v0
.end method
