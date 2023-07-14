.class final Lcom/crashlytics/android/Crashlytics$7$3;
.super Ljava/lang/Object;
.source "Crashlytics.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/Crashlytics$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/crashlytics/android/Crashlytics$7;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/Crashlytics$7;)V
    .locals 0

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics$7$3;->this$1:Lcom/crashlytics/android/Crashlytics$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x1

    .line 1047
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$7$3;->this$1:Lcom/crashlytics/android/Crashlytics$7;

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics$7;->this$0:Lcom/crashlytics/android/Crashlytics;

    .line 1950
    new-instance v1, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;-><init>(Lio/fabric/sdk/android/Kit;)V

    .line 1951
    invoke-interface {v1}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "always_send_reports_opt_in"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->save(Landroid/content/SharedPreferences$Editor;)Z

    .line 1048
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$7$3;->this$1:Lcom/crashlytics/android/Crashlytics$7;

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics$7;->val$latch:Lcom/crashlytics/android/Crashlytics$OptInLatch;

    invoke-virtual {v0, v3}, Lcom/crashlytics/android/Crashlytics$OptInLatch;->setOptIn(Z)V

    .line 1049
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1050
    return-void
.end method
