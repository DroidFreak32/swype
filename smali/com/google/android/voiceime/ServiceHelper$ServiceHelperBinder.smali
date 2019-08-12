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
.field private synthetic this$0:Lcom/google/android/voiceime/ServiceHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/voiceime/ServiceHelper;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;->this$0:Lcom/google/android/voiceime/ServiceHelper;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method final getService()Lcom/google/android/voiceime/ServiceHelper;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;->this$0:Lcom/google/android/voiceime/ServiceHelper;

    return-object v0
.end method
