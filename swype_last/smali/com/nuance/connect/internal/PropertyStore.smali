.class public Lcom/nuance/connect/internal/PropertyStore;
.super Ljava/lang/Object;


# instance fields
.field private final listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<*>;>;>;>;"
        }
    .end annotation
.end field

.field private final properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/Property",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/PropertyStore;->properties:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/PropertyStore;->listeners:Ljava/util/HashMap;

    return-void
.end method

.method private static add(Lcom/nuance/connect/internal/Property;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nuance/connect/internal/Property",
            "<TT;>;",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<TT;>;)V"
        }
    .end annotation

    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property$ValueListener;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/nuance/connect/internal/Property;->addListener(Lcom/nuance/connect/internal/Property$ValueListener;Z)V

    :cond_12
    return-void
.end method

.method private static addHelper(Lcom/nuance/connect/internal/Property;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<*>;",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const-class v0, Ljava/lang/Boolean;

    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-class v0, Ljava/lang/Boolean;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property$ValueListener;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {p0, p1}, Lcom/nuance/connect/internal/PropertyStore;->add(Lcom/nuance/connect/internal/Property;Lcom/nuance/connect/internal/Property$ValueListener;)V

    goto :goto_4

    :cond_21
    const-class v0, Ljava/lang/Integer;

    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-class v0, Ljava/lang/Integer;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property$ValueListener;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {p0, p1}, Lcom/nuance/connect/internal/PropertyStore;->add(Lcom/nuance/connect/internal/Property;Lcom/nuance/connect/internal/Property$ValueListener;)V

    goto :goto_4

    :cond_3d
    const-class v0, Ljava/lang/String;

    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    const-class v0, Ljava/lang/String;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property$ValueListener;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-static {p0, p1}, Lcom/nuance/connect/internal/PropertyStore;->add(Lcom/nuance/connect/internal/Property;Lcom/nuance/connect/internal/Property$ValueListener;)V

    goto :goto_4

    :cond_59
    const-class v0, Ljava/lang/Long;

    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-class v0, Ljava/lang/Long;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property$ValueListener;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0, p1}, Lcom/nuance/connect/internal/PropertyStore;->add(Lcom/nuance/connect/internal/Property;Lcom/nuance/connect/internal/Property$ValueListener;)V

    goto :goto_4
.end method

.method private static getBooleanHelper(Lcom/nuance/connect/internal/Property;)Lcom/nuance/connect/internal/Property;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<*>;)",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_f

    const-class v0, Ljava/lang/Boolean;

    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_e
    return-object p0

    :cond_f
    const/4 p0, 0x0

    goto :goto_e
.end method

.method private static getIntegerHelper(Lcom/nuance/connect/internal/Property;)Lcom/nuance/connect/internal/Property;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<*>;)",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_f

    const-class v0, Ljava/lang/Integer;

    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_e
    return-object p0

    :cond_f
    const/4 p0, 0x0

    goto :goto_e
.end method

.method private static getLongHelper(Lcom/nuance/connect/internal/Property;)Lcom/nuance/connect/internal/Property;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<*>;)",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_f

    const-class v0, Ljava/lang/Long;

    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_e
    return-object p0

    :cond_f
    const/4 p0, 0x0

    goto :goto_e
.end method

.method private static getStringHelper(Lcom/nuance/connect/internal/Property;)Lcom/nuance/connect/internal/Property;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<*>;)",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_f

    const-class v0, Ljava/lang/String;

    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_e
    return-object p0

    :cond_f
    const/4 p0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/PropertyStore;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/Property;

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/nuance/connect/internal/PropertyStore;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_19

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_19
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/nuance/connect/internal/PropertyStore;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_26
    return-void

    :cond_27
    invoke-static {v0, p2}, Lcom/nuance/connect/internal/PropertyStore;->addHelper(Lcom/nuance/connect/internal/Property;Lcom/nuance/connect/internal/Property$ValueListener;)V

    goto :goto_26
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/PropertyStore;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/Property;

    invoke-static {v0}, Lcom/nuance/connect/internal/PropertyStore;->getBooleanHelper(Lcom/nuance/connect/internal/Property;)Lcom/nuance/connect/internal/Property;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    :goto_14
    return-object v0

    :cond_15
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_14
.end method

.method public getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/PropertyStore;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/Property;

    invoke-static {v0}, Lcom/nuance/connect/internal/PropertyStore;->getIntegerHelper(Lcom/nuance/connect/internal/Property;)Lcom/nuance/connect/internal/Property;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/PropertyStore;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/Property;

    invoke-static {v0}, Lcom/nuance/connect/internal/PropertyStore;->getLongHelper(Lcom/nuance/connect/internal/Property;)Lcom/nuance/connect/internal/Property;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getProperty(Ljava/lang/String;)Lcom/nuance/connect/internal/Property;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/nuance/connect/internal/Property",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/PropertyStore;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/Property;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/PropertyStore;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/Property;

    invoke-static {v0}, Lcom/nuance/connect/internal/PropertyStore;->getStringHelper(Lcom/nuance/connect/internal/Property;)Lcom/nuance/connect/internal/Property;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/PropertyStore;->properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public setProperty(Lcom/nuance/connect/internal/Property;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/PropertyStore;->properties:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/Property;

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/nuance/connect/internal/PropertyStore;->properties:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/internal/PropertyStore;->listeners:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/nuance/connect/internal/PropertyStore;->listeners:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-static {p1, v0}, Lcom/nuance/connect/internal/PropertyStore;->addHelper(Lcom/nuance/connect/internal/Property;Lcom/nuance/connect/internal/Property$ValueListener;)V

    goto :goto_33

    :cond_49
    iget-object v0, p0, Lcom/nuance/connect/internal/PropertyStore;->listeners:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_52
    return-void

    :cond_53
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getSource()Lcom/nuance/connect/internal/Property$Source;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    goto :goto_52
.end method
