.class final Lcom/google/android/vending/licensing/LicenseChecker$ResultListener$1;
.super Ljava/lang/Object;
.source "LicenseChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;-><init>(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/LicenseValidator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;


# direct methods
.method constructor <init>(Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 214
    invoke-static {}, Lcom/google/android/vending/licensing/LicenseChecker;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "Check timed out."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;

    iget-object v0, v0, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;->this$0:Lcom/google/android/vending/licensing/LicenseChecker;

    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;

    invoke-static {v1}, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;->access$100(Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;)Lcom/google/android/vending/licensing/LicenseValidator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/vending/licensing/LicenseChecker;->access$200(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/LicenseValidator;)V

    .line 216
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;

    iget-object v0, v0, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;->this$0:Lcom/google/android/vending/licensing/LicenseChecker;

    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;

    invoke-static {v1}, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;->access$100(Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;)Lcom/google/android/vending/licensing/LicenseValidator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/vending/licensing/LicenseChecker;->access$300(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/LicenseValidator;)V

    .line 217
    return-void
.end method
