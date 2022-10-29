.class final Lcom/nuance/swype/preference/ConnectionAwarePreferences$2;
.super Ljava/lang/Object;
.source "ConnectionAwarePreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectPreference()Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/preference/ConnectionAwarePreferences;


# direct methods
.method constructor <init>(Lcom/nuance/swype/preference/ConnectionAwarePreferences;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/nuance/swype/preference/ConnectionAwarePreferences$2;->this$0:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nuance/swype/preference/ConnectionAwarePreferences$2;->this$0:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    # invokes: Lcom/nuance/swype/preference/ConnectionAwarePreferences;->onConnectPreferenceClick()V
    invoke-static {v0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->access$100(Lcom/nuance/swype/preference/ConnectionAwarePreferences;)V

    .line 70
    const/4 v0, 0x1

    return v0
.end method
