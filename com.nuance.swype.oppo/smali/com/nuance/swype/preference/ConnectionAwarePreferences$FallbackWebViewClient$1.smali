.class final Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient$1;
.super Ljava/lang/Object;
.source "ConnectionAwarePreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient;->loadCachedPage(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient;

.field private synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient$1;->this$0:Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient;

    iput-object p2, p0, Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient$1;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient$1;->val$view:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient$1;->this$0:Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient;

    invoke-static {v1}, Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient;->access$100(Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method
