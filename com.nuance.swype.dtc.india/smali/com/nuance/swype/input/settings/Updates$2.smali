.class Lcom/nuance/swype/input/settings/Updates$2;
.super Ljava/lang/Object;
.source "Updates.java"

# interfaces
.implements Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/Updates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/Updates;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/Updates;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/Updates;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Updates$2;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/nuance/swype/preference/ProgressBarPreference;)V
    .locals 1
    .param p1, "pref"    # Lcom/nuance/swype/preference/ProgressBarPreference;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$2;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/Updates;->access$300(Lcom/nuance/swype/input/settings/Updates;)V

    .line 108
    return-void
.end method
