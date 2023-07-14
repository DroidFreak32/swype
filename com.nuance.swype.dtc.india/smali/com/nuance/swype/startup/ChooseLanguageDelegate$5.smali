.class final Lcom/nuance/swype/startup/ChooseLanguageDelegate$5;
.super Ljava/lang/Object;
.source "ChooseLanguageDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/ChooseLanguageDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$5;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$5;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->access$400(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)V

    .line 178
    return-void
.end method
