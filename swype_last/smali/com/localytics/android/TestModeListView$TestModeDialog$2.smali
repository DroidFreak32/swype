.class Lcom/localytics/android/TestModeListView$TestModeDialog$2;
.super Ljava/lang/Object;
.source "TestModeListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/TestModeListView$TestModeDialog;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/localytics/android/TestModeListView$TestModeDialog;


# direct methods
.method constructor <init>(Lcom/localytics/android/TestModeListView$TestModeDialog;)V
    .registers 2

    .prologue
    .line 300
    iput-object p1, p0, Lcom/localytics/android/TestModeListView$TestModeDialog$2;->this$1:Lcom/localytics/android/TestModeListView$TestModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog$2;->this$1:Lcom/localytics/android/TestModeListView$TestModeDialog;

    iget-object v0, v0, Lcom/localytics/android/TestModeListView$TestModeDialog;->this$0:Lcom/localytics/android/TestModeListView;

    # getter for: Lcom/localytics/android/TestModeListView;->mCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/localytics/android/TestModeListView;->access$200(Lcom/localytics/android/TestModeListView;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 306
    new-instance v0, Lcom/localytics/android/TestModeListView$MenuDialog;

    iget-object v1, p0, Lcom/localytics/android/TestModeListView$TestModeDialog$2;->this$1:Lcom/localytics/android/TestModeListView$TestModeDialog;

    iget-object v1, v1, Lcom/localytics/android/TestModeListView$TestModeDialog;->this$0:Lcom/localytics/android/TestModeListView;

    iget-object v2, p0, Lcom/localytics/android/TestModeListView$TestModeDialog$2;->this$1:Lcom/localytics/android/TestModeListView$TestModeDialog;

    iget-object v2, v2, Lcom/localytics/android/TestModeListView$TestModeDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v2}, Lcom/localytics/android/TestModeListView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x103000b

    invoke-direct {v0, v1, v2, v3}, Lcom/localytics/android/TestModeListView$MenuDialog;-><init>(Lcom/localytics/android/TestModeListView;Landroid/content/Context;I)V

    .line 307
    invoke-virtual {v0}, Lcom/localytics/android/TestModeListView$MenuDialog;->show()V

    .line 309
    :cond_21
    return-void
.end method
