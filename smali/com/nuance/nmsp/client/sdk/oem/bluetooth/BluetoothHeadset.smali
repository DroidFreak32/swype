.class public Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$ServiceListener;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String;

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String;

.field public static final AUDIO_STATE_CONNECTED:I

.field public static final AUDIO_STATE_DISCONNECTED:I

.field public static final EXTRA_AUDIO_STATE:Ljava/lang/String;

.field public static final EXTRA_STATE:Ljava/lang/String;

.field public static final PRIORITY_OFF:I

.field public static final PRIORITY_UNDEFINED:I

.field public static final STATE_CONNECTED:I

.field public static final STATE_CONNECTING:I

.field public static final STATE_DISCONNECTED:I

.field public static final STATE_ERROR:I

.field private static final a:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/lang/reflect/Method;

.field private static final e:Ljava/lang/reflect/Method;

.field private static final f:Ljava/lang/reflect/Method;

.field private static final g:Ljava/lang/reflect/Method;

.field private static final h:Ljava/lang/reflect/Method;

.field private static final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final j:Z

.field private static final k:Ljava/lang/reflect/Method;

.field private static final l:Ljava/lang/reflect/Method;


# instance fields
.field private m:Ljava/lang/Object;

.field private n:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$ServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v4, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;

    invoke-direct {v4}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;-><init>()V

    const-string v0, "android.bluetooth.BluetoothHeadset"

    invoke-virtual {v4, v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v0, "android.bluetooth.BluetoothHeadset$ServiceListener"

    invoke-virtual {v4, v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    new-array v0, v8, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    aput-object v6, v0, v1

    invoke-virtual {v4, v5, v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->a:Ljava/lang/reflect/Constructor;

    const-string v0, "getState"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v0, v3}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getMethodOrNull(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "getState"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v7, Landroid/bluetooth/BluetoothDevice;

    aput-object v7, v3, v2

    invoke-virtual {v4, v5, v0, v3}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    :goto_0
    sput-object v3, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->b:Ljava/lang/reflect/Method;

    sput-boolean v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->j:Z

    const-string v0, "getCurrentHeadset"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v0, v3}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->e:Ljava/lang/reflect/Method;

    const-string v0, "connectHeadset"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v7, Landroid/bluetooth/BluetoothDevice;

    aput-object v7, v3, v2

    invoke-virtual {v4, v5, v0, v3}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->g:Ljava/lang/reflect/Method;

    const-string v0, "disconnectHeadset"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v0, v3}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getMethodOrNull(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "disconnectHeadset"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v7, Landroid/bluetooth/BluetoothDevice;

    aput-object v7, v3, v2

    invoke-virtual {v4, v5, v0, v3}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :cond_0
    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->f:Ljava/lang/reflect/Method;

    const-string v0, "startVoiceRecognition"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v0, v3}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->c:Ljava/lang/reflect/Method;

    const-string v0, "stopVoiceRecognition"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v0, v3}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->d:Ljava/lang/reflect/Method;

    const-string v0, "close"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v0, v3}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->h:Ljava/lang/reflect/Method;

    const-string v0, "getPriority"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v7, Landroid/bluetooth/BluetoothDevice;

    aput-object v7, v3, v2

    invoke-virtual {v4, v5, v0, v3}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->k:Ljava/lang/reflect/Method;

    const-string v0, "setPriority"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v7, Landroid/bluetooth/BluetoothDevice;

    aput-object v7, v3, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v3, v1

    invoke-virtual {v4, v5, v0, v3}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->l:Ljava/lang/reflect/Method;

    sput-object v6, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->i:Ljava/lang/Class;

    const-string v0, "ACTION_STATE_CHANGED"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->ACTION_STATE_CHANGED:Ljava/lang/String;

    const-string v0, "ACTION_AUDIO_STATE_CHANGED"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String;

    const-string v0, "EXTRA_STATE"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->EXTRA_STATE:Ljava/lang/String;

    const-string v0, "EXTRA_AUDIO_STATE"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->EXTRA_AUDIO_STATE:Ljava/lang/String;

    const-string v0, "STATE_ERROR"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->STATE_ERROR:I

    const-string v0, "STATE_DISCONNECTED"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->STATE_DISCONNECTED:I

    const-string v0, "STATE_CONNECTING"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->STATE_CONNECTING:I

    const-string v0, "STATE_CONNECTED"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->STATE_CONNECTED:I

    const-string v0, "AUDIO_STATE_DISCONNECTED"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->AUDIO_STATE_DISCONNECTED:I

    const-string v0, "AUDIO_STATE_CONNECTED"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->AUDIO_STATE_CONNECTED:I

    const-string v0, "PRIORITY_OFF"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->PRIORITY_OFF:I

    const-string v0, "PRIORITY_UNDEFINED"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v5, v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->PRIORITY_UNDEFINED:I

    return-void

    :cond_1
    move-object v3, v0

    move v0, v2

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$ServiceListener;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->n:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$ServiceListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->i:Ljava/lang/Class;

    aput-object v2, v1, v3

    new-instance v2, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$1;

    invoke-direct {v2, p0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$1;-><init>(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->a:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->m:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$ServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->n:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset$ServiceListener;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->h:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->m:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public connectHeadset(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->g:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->m:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public disconnectHeadset()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->f:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->m:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public disconnectHeadset(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->f:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->m:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->e:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->m:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5

    sget v1, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->PRIORITY_UNDEFINED:I

    :try_start_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->k:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->k:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->m:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getState()I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->j:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->e:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->m:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->b:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->m:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->b:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->m:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->l:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->l:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->m:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public startVoiceRecognition()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->c:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->m:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public stopVoiceRecognition()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->d:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadset;->m:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method
