.class Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;
.super Ljava/lang/Object;
.source "KeyboardStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/KeyboardStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TypedValueWrapper"
.end annotation


# instance fields
.field bFromThemeApk:Z

.field final synthetic this$0:Lcom/nuance/swype/input/KeyboardStyle;

.field value:Landroid/util/TypedValue;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/KeyboardStyle;Landroid/util/TypedValue;Z)V
    .locals 0
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "fromApk"    # Z

    .prologue
    .line 68
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;->this$0:Lcom/nuance/swype/input/KeyboardStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;->value:Landroid/util/TypedValue;

    .line 70
    iput-boolean p3, p0, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;->bFromThemeApk:Z

    .line 71
    return-void
.end method


# virtual methods
.method public getRawValue()Landroid/util/TypedValue;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;->value:Landroid/util/TypedValue;

    return-object v0
.end method
