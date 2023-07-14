.class public final Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;
.super Landroid/os/Binder;
.source "ServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voiceime/ServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceHelperBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voiceime/ServiceHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/voiceime/ServiceHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/voiceime/ServiceHelper;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;->this$0:Lcom/google/android/voiceime/ServiceHelper;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
