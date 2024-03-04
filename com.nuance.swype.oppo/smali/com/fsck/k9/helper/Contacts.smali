.class public abstract Lcom/fsck/k9/helper/Contacts;
.super Ljava/lang/Object;
.source "Contacts.java"


# static fields
.field private static sInstance:Lcom/fsck/k9/helper/Contacts;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/fsck/k9/helper/Contacts;->sInstance:Lcom/fsck/k9/helper/Contacts;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/fsck/k9/helper/Contacts;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v3, Lcom/fsck/k9/helper/Contacts;->sInstance:Lcom/fsck/k9/helper/Contacts;

    if-nez v3, :cond_1

    .line 46
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 48
    .local v2, "sdkVersion":I
    const/4 v0, 0x0

    .line 49
    .local v0, "className":Ljava/lang/String;
    const/4 v3, 0x4

    if-gt v2, v3, :cond_2

    .line 51
    const-string v0, "com.fsck.k9.helper.ContactsSdk3_4"

    .line 63
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/fsck/k9/helper/Contacts;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 66
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 67
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/helper/Contacts;

    sput-object v3, Lcom/fsck/k9/helper/Contacts;->sInstance:Lcom/fsck/k9/helper/Contacts;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    .line 95
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "sdkVersion":I
    :cond_1
    :goto_1
    sget-object v3, Lcom/fsck/k9/helper/Contacts;->sInstance:Lcom/fsck/k9/helper/Contacts;

    return-object v3

    .line 53
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v2    # "sdkVersion":I
    :cond_2
    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 55
    const-string v0, "com.fsck.k9.helper.ContactsSdk5"

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "k9"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t find class: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 73
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/InstantiationException;
    const-string v3, "k9"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t instantiate class: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 77
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "k9"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t access class: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 81
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "k9"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t find constructor of class: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 85
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "k9"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Wrong arguments for constructor of class: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 89
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "k9"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t invoke constructor of class: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public abstract getNameForAddress$16915f7f()Ljava/lang/String;
.end method
