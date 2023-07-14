.class final Lcom/android/support/v4/preference/PreferenceFragment$3;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/v4/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/support/v4/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/support/v4/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/support/v4/preference/PreferenceFragment;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/support/v4/preference/PreferenceFragment$3;->this$0:Lcom/android/support/v4/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 298
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment$3;->this$0:Lcom/android/support/v4/preference/PreferenceFragment;

    invoke-static {v0}, Lcom/android/support/v4/preference/PreferenceFragment;->access$100(Lcom/android/support/v4/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 299
    instance-of v0, v0, Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment$3;->this$0:Lcom/android/support/v4/preference/PreferenceFragment;

    invoke-static {v0}, Lcom/android/support/v4/preference/PreferenceFragment;->access$100(Lcom/android/support/v4/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    .line 306
    :cond_0
    return v1
.end method
