using System.Web.Mvc;
using Castle.MicroKernel.Registration;
using Castle.MicroKernel.Resolvers.SpecializedResolvers;
using Castle.MicroKernel.SubSystems.Configuration;
using Castle.Windsor;
using IUDICO.LMS.IoC;

namespace IUDICO.LMS.Installers
{
    public class ControllerFactoryInstaller : IWindsorInstaller
    {
        public void Install(IWindsorContainer container, IConfigurationStore store)
        {
            // add collection resolver
            container.Kernel.Resolver.AddSubResolver(new CollectionResolver(container.Kernel, allowEmptyCollections: true));

            container.Register(
                Component.For<IControllerFactory>()
                    .ImplementedBy<IocControllerFactory>().LifeStyle.Transient);
        }
    }
}