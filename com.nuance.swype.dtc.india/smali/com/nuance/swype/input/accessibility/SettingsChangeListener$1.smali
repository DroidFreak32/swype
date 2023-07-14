.class Lcom/nuance/swype/input/accessibility/SettingsChangeListener$1;
.super Landroid/database/ContentObserver;
.source "SettingsChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->registerObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/accessibility/SettingsChangeListener;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/accessibility/SettingsChangeListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/accessibility/SettingsChangeListener;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener$1;->this$0:Lcom/nuance/swype/input/accessibility/SettingsChangeListener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener$1;->this$0:Lcom/nuance/swype/input/accessibility/SettingsChangeListener;

    invoke-virtual {v0}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->resetMagnification()V

    .line 126
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener$1;->this$0:Lcom/nuance/swype/input/accessibility/SettingsChangeListener;

    invoke-virtual {v0}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->resetExploreByTouch()V

    .line 127
    return-void
.end method
