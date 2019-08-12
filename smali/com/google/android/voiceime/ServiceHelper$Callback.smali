.class public final Lcom/google/android/voiceime/ServiceHelper$Callback;
.super Ljava/lang/Object;
.source "ServiceBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voiceime/ServiceBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voiceime/ServiceBridge;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/voiceime/ServiceBridge;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/voiceime/ServiceHelper$Callback;->this$0:Lcom/google/android/voiceime/ServiceBridge;

    iput-object p2, p0, Lcom/google/android/voiceime/ServiceHelper$Callback;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
