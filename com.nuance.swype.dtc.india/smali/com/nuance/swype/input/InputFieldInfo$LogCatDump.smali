.class Lcom/nuance/swype/input/InputFieldInfo$LogCatDump;
.super Ljava/lang/Object;
.source "InputFieldInfo.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/InputFieldInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogCatDump"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/InputFieldInfo;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/InputFieldInfo;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/nuance/swype/input/InputFieldInfo$LogCatDump;->this$0:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputFieldInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "x1"    # Lcom/nuance/swype/input/InputFieldInfo$1;

    .prologue
    .line 575
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/InputFieldInfo$LogCatDump;-><init>(Lcom/nuance/swype/input/InputFieldInfo;)V

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 1
    .param p1, "x"    # Ljava/lang/String;

    .prologue
    .line 578
    const-string/jumbo v0, "TEST"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-void
.end method
