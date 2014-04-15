
┌────────────────────────────────────────────────────────────────────┐
│ Sage Version 6.0, Release Date: 2013-12-17                         │
│ Type "notebook()" for the browser-based notebook interface.        │
│ Type "help()" for help.                                            │
└────────────────────────────────────────────────────────────────────┘
sage: 

sage: sage: z=var('z')
sage: assume('z in CC')
---------------------------------------------------------------------------
AttributeError                            Traceback (most recent call last)
<ipython-input-4-8ebde4d8b142> in <module>()
----> 1 assume(z in CC)

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/assumptions.pyc in assume(*args)
    410         else:
    411             try:
--> 412                 x.assume()
    413             except KeyError:
    414                 raise TypeError, "assume not defined for objects of type '%s'"%type(x)

AttributeError: 'bool' object has no attribute 'assume'
sage: assume('z in CC')
sage: z
z
sage: type(z)
<type 'sage.symbolic.expression.Expression'>
sage: f=lambda x,y: sum([(x+I*y)^n/n forn in range(1,10)])
  File "<ipython-input-8-409a6f271a91>", line 1
    __tmp__=var("x,y"); f = symbolic_expression(sum([(x+I*y)**n/n forn in range(Integer(1),Integer(10))])).function(x,y)
                                                                     ^
SyntaxError: invalid syntax

sage: f=lambda x,y: sum([(x+I*y)^n/n for n in range(1,10)])
  File "<ipython-input-9-53c5862fef3d>", line 1
    f=lambda x,y: sum([(x+I*y)**n/n forn in range(Integer(1),Integer(10))])
                                       ^
SyntaxError: invalid syntax

sage: f=lambda x,y: sum([(x+I*y)^n/n for n in range(1,10)])
sage: f(1,1)
368/315*I + 1088/315
sage: plot3d(f,(x,-1,1),(y,-1,1))
---------------------------------------------------------------------------
NameError                                 Traceback (most recent call last)
<ipython-input-12-d25ac7723185> in <module>()
----> 1 plot3(f,(x,-Integer(1),Integer(1)),(y,-Integer(1),Integer(1)))

NameError: name 'plot3' is not defined
sage: plot3d(f,(x,-1,1),(y,-1,1))
---------------------------------------------------------------------------
NameError                                 Traceback (most recent call last)
<ipython-input-13-0b100647ee71> in <module>()
----> 1 plot3d(f,(x,-Integer(1),Integer(1)),(y,-Integer(1),Integer(1)))

NameError: name 'y' is not defined
sage: x,y=var('x,y')
sage: plot3d(f,(x,-1,1),(y,-1,1))
---------------------------------------------------------------------------
TypeError                                 Traceback (most recent call last)
<ipython-input-15-0b100647ee71> in <module>()
----> 1 plot3d(f,(x,-Integer(1),Integer(1)),(y,-Integer(1),Integer(1)))

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/IPython/core/displayhook.pyc in __call__(self, result)
    236             self.start_displayhook()
    237             self.write_output_prompt()
--> 238             format_dict = self.compute_format_data(result)
    239             self.write_format_data(format_dict)
    240             self.update_user_ns(result)

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/IPython/core/displayhook.pyc in compute_format_data(self, result)
    148             MIME type representation of the object.
    149         """
--> 150         return self.shell.display_formatter.format(result)
    151 
    152     def write_format_data(self, format_dict):

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/IPython/core/formatters.pyc in format(self, obj, include, exclude)
    124                     continue
    125             try:
--> 126                 data = formatter(obj)
    127             except:
    128                 # FIXME: log the exception

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/misc/displayhook.pyc in __call__(self, obj)
    504             sage: fmt.set_display('simple')
    505         """
--> 506         if self.try_format_graphics(obj):
    507             return ''
    508         s = self.try_format_obj(obj)

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/misc/displayhook.pyc in try_format_graphics(self, obj)
    400         from sage.structure.sage_object import SageObject
    401         if isinstance(obj, SageObject) and hasattr(obj, '_graphics_'):
--> 402             return obj._graphics_()
    403         return False
    404 

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/plot/plot3d/base.so in sage.plot.plot3d.base.Graphics3d._graphics_ (sage/plot/plot3d/base.c:3177)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/plot/plot3d/base.so in sage.plot.plot3d.base.Graphics3d.show (sage/plot/plot3d/base.c:11852)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/plot/plot3d/base.so in sage.plot.plot3d.base.Graphics3d._prepare_for_jmol (sage/plot/plot3d/base.c:8008)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/plot/plot3d/base.so in sage.plot.plot3d.base.Graphics3d._box_for_aspect_ratio (sage/plot/plot3d/base.c:8623)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/plot/plot3d/base.so in sage.plot.plot3d.base.Graphics3d._safe_bounding_box (sage/plot/plot3d/base.c:4219)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/plot/plot3d/parametric_surface.so in sage.plot.plot3d.parametric_surface.ParametricSurface.bounding_box (sage/plot/plot3d/parametric_surface.c:3529)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/plot/plot3d/parametric_surface.so in sage.plot.plot3d.parametric_surface.ParametricSurface.triangulate (sage/plot/plot3d/parametric_surface.c:4132)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/plot/plot3d/parametric_surface.so in sage.plot.plot3d.parametric_surface.ParametricSurface.triangulate (sage/plot/plot3d/parametric_surface.c:4061)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/plot/plot3d/parametric_surface.so in sage.plot.plot3d.parametric_surface.ParametricSurface.eval_grid (sage/plot/plot3d/parametric_surface.c:5859)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression.so in sage.symbolic.expression.Expression.__float__ (sage/symbolic/expression.cpp:7716)()

TypeError: unable to simplify to float approximation
sage: !clear
sage: clear
sage: plot3d?
sage: plot3d(f.real(),(x,-1,1),(y,-1,1))
---------------------------------------------------------------------------
TypeError                                 Traceback (most recent call last)
<ipython-input-20-36a5fc17c750> in <module>()
----> 1 plot3d(abs(f),(x,-Integer(1),Integer(1)),(y,-Integer(1),Integer(1)))

TypeError: bad operand type for abs(): 'function'
sage: abs(1+I)
2
sage: abs(1+I)
sqrt(2)
sage: f(1,1).real()
368/315*I + 1088/315
sage: f(1,1).real()
1088/315
sage: plot3d(f.real(),(x,-1,1),(y,-1,1))
---------------------------------------------------------------------------
AttributeError                            Traceback (most recent call last)
<ipython-input-26-ec707751370a> in <module>()
----> 1 plot3d(f.real(),(x,-Integer(1),Integer(1)),(y,-Integer(1),Integer(1)))

AttributeError: 'function' object has no attribute 'real'
sage: f=lambda x,y: sum([(x+I*y)^n/n for n in range(1,10)]).real()
sage: plot3d(f,(x,-1,1),(y,-1,1))

sage: r, theta, z = var('r theta z')
sage: T.transform(radius=r, azimuth=theta, height=z)
---------------------------------------------------------------------------
NameError                                 Traceback (most recent call last)
<ipython-input-30-2703f50306a4> in <module>()
----> 1 T.transform(radius=r, azimuth=theta, height=z)

NameError: name 'T' is not defined
sage: T = Cylindrical('height', ['radius', 'azimuth'])
sage: T.transform(radius=r, azimuth=theta, height=z)
(r*cos(theta), r*sin(theta), z)
sage: plot3d(f(r*cos(theta),r*sin(theta)), (r, 0, 1), (theta, 0, 2*pi), transformation=T)

sage: load("series.sage")
  File "<string>", line 2
    ┌────────────────────────────────────────────────────────────────────┐
    ^
SyntaxError: invalid syntax

sage: load("series.sage")
---------------------------------------------------------------------------
TypeError                                 Traceback (most recent call last)
<ipython-input-35-f00dfea57c76> in <module>()
----> 1 load("series.sage")

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/structure/sage_object.so in sage.structure.sage_object.load (sage/structure/sage_object.c:9095)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/misc/preparser.pyc in load(filename, globals, attach)
   1770             # Preparse in memory only for speed.
   1771             exec_file_is(fpath)
-> 1772             exec preparse_file(open(fpath).read()) + "\n" in globals
   1773     elif fpath.endswith('.spyx') or fpath.endswith('.pyx'):
   1774         exec_file_is(fpath)

<string> in <module>()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/plot/plot3d/plot3d.pyc in plot3d(f, urange, vrange, adaptive, transformation, **kwds)
    836         if isinstance(transformation, _Coordinates):
    837             R = transformation.to_cartesian(f, params)
--> 838             return parametric_plot3d.parametric_plot3d(R, urange, vrange, **kwds)
    839         else:
    840             raise ValueError, 'unknown transformation type'

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/plot/plot3d/parametric_plot3d.pyc in parametric_plot3d(f, urange, vrange, plot_points, boundary_style, **kwds)
    511         if plot_points == "automatic":
    512             plot_points = [40,40]
--> 513         G = _parametric_plot3d_surface(f, urange, vrange, plot_points=plot_points, boundary_style=boundary_style, **kwds)
    514     G._set_extra_kwds(kwds)
    515     return G

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/plot/plot3d/parametric_plot3d.pyc in _parametric_plot3d_surface(f, urange, vrange, plot_points, boundary_style, **kwds)
    617     """
    618     from sage.plot.misc import setup_for_eval_on_grid
--> 619     g, ranges = setup_for_eval_on_grid(f, [urange,vrange], plot_points)
    620     urange = srange(*ranges[0], include_endpoint=True)
    621     vrange = srange(*ranges[1], include_endpoint=True)

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/plot/misc.pyc in setup_for_eval_on_grid(funcs, ranges, plot_points, return_vars)
    146         return fast_float(funcs, *vars,**options), [tuple(range+[range_step]) for range,range_step in zip(ranges, range_steps)], vars
    147     else:
--> 148         return fast_float(funcs, *vars,**options), [tuple(range+[range_step]) for range,range_step in zip(ranges, range_steps)]
    149 
    150 

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/ext/fast_eval.so in sage.ext.fast_eval.fast_float (sage/ext/fast_eval.c:9440)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/ext/fast_eval.so in sage.ext.fast_eval.fast_float (sage/ext/fast_eval.c:9642)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/ext/fast_callable.so in sage.ext.fast_callable.fast_callable (sage/ext/fast_callable.c:3829)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression.so in sage.symbolic.expression.Expression._fast_callable_ (sage/symbolic/expression.cpp:39203)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression_conversions.pyc in fast_callable(ex, etb)
   1429 
   1430     """
-> 1431     return FastCallableConverter(ex, etb)()
   1432 
   1433 class RingConverter(Converter):

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression_conversions.pyc in __call__(self, ex)
    212                 div = self.get_fake_div(ex)
    213                 return self.arithmetic(div, div.operator())
--> 214             return self.arithmetic(ex, operator)
    215         elif operator in relation_operators:
    216             return self.relation(ex, operator)

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression_conversions.pyc in arithmetic(self, ex, operator)
   1369         elif operator is _operator.neg:
   1370             return self.etb.call(operator, operands[0])
-> 1371         return reduce(lambda x,y: self.etb.call(operator, x,y), operands)
   1372 
   1373     def symbol(self, ex):

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression_conversions.pyc in <lambda>(x, y)
   1369         elif operator is _operator.neg:
   1370             return self.etb.call(operator, operands[0])
-> 1371         return reduce(lambda x,y: self.etb.call(operator, x,y), operands)
   1372 
   1373     def symbol(self, ex):

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/ext/fast_callable.so in sage.ext.fast_callable.ExpressionTreeBuilder.call (sage/ext/fast_callable.c:5805)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/ext/fast_callable.so in sage.ext.fast_callable.ExpressionTreeBuilder.__call__ (sage/ext/fast_callable.c:5048)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression.so in sage.symbolic.expression.Expression._fast_callable_ (sage/symbolic/expression.cpp:39203)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression_conversions.pyc in fast_callable(ex, etb)
   1429 
   1430     """
-> 1431     return FastCallableConverter(ex, etb)()
   1432 
   1433 class RingConverter(Converter):

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression_conversions.pyc in __call__(self, ex)
    211             if getattr(self, 'use_fake_div', False) and operator is _operator.mul:
    212                 div = self.get_fake_div(ex)
--> 213                 return self.arithmetic(div, div.operator())
    214             return self.arithmetic(ex, operator)
    215         elif operator in relation_operators:

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression_conversions.pyc in arithmetic(self, ex, operator)
   1369         elif operator is _operator.neg:
   1370             return self.etb.call(operator, operands[0])
-> 1371         return reduce(lambda x,y: self.etb.call(operator, x,y), operands)
   1372 
   1373     def symbol(self, ex):

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression_conversions.pyc in <lambda>(x, y)
   1369         elif operator is _operator.neg:
   1370             return self.etb.call(operator, operands[0])
-> 1371         return reduce(lambda x,y: self.etb.call(operator, x,y), operands)
   1372 
   1373     def symbol(self, ex):

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/ext/fast_callable.so in sage.ext.fast_callable.ExpressionTreeBuilder.call (sage/ext/fast_callable.c:5805)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/ext/fast_callable.so in sage.ext.fast_callable.ExpressionTreeBuilder.__call__ (sage/ext/fast_callable.c:5048)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression.so in sage.symbolic.expression.Expression._fast_callable_ (sage/symbolic/expression.cpp:39203)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression_conversions.pyc in fast_callable(ex, etb)
   1429 
   1430     """
-> 1431     return FastCallableConverter(ex, etb)()
   1432 
   1433 class RingConverter(Converter):

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression_conversions.pyc in __call__(self, ex)
    212                 div = self.get_fake_div(ex)
    213                 return self.arithmetic(div, div.operator())
--> 214             return self.arithmetic(ex, operator)
    215         elif operator in relation_operators:
    216             return self.relation(ex, operator)

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression_conversions.pyc in arithmetic(self, ex, operator)
   1369         elif operator is _operator.neg:
   1370             return self.etb.call(operator, operands[0])
-> 1371         return reduce(lambda x,y: self.etb.call(operator, x,y), operands)
   1372 
   1373     def symbol(self, ex):

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression_conversions.pyc in <lambda>(x, y)
   1369         elif operator is _operator.neg:
   1370             return self.etb.call(operator, operands[0])
-> 1371         return reduce(lambda x,y: self.etb.call(operator, x,y), operands)
   1372 
   1373     def symbol(self, ex):

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/ext/fast_callable.so in sage.ext.fast_callable.ExpressionTreeBuilder.call (sage/ext/fast_callable.c:5776)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/ext/fast_callable.so in sage.ext.fast_callable.ExpressionTreeBuilder.__call__ (sage/ext/fast_callable.c:5048)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression.so in sage.symbolic.expression.Expression._fast_callable_ (sage/symbolic/expression.cpp:39203)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression_conversions.pyc in fast_callable(ex, etb)
   1429 
   1430     """
-> 1431     return FastCallableConverter(ex, etb)()
   1432 
   1433 class RingConverter(Converter):

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression_conversions.pyc in __call__(self, ex)
    212                 div = self.get_fake_div(ex)
    213                 return self.arithmetic(div, div.operator())
--> 214             return self.arithmetic(ex, operator)
    215         elif operator in relation_operators:
    216             return self.relation(ex, operator)

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression_conversions.pyc in arithmetic(self, ex, operator)
   1369         elif operator is _operator.neg:
   1370             return self.etb.call(operator, operands[0])
-> 1371         return reduce(lambda x,y: self.etb.call(operator, x,y), operands)
   1372 
   1373     def symbol(self, ex):

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression_conversions.pyc in <lambda>(x, y)
   1369         elif operator is _operator.neg:
   1370             return self.etb.call(operator, operands[0])
-> 1371         return reduce(lambda x,y: self.etb.call(operator, x,y), operands)
   1372 
   1373     def symbol(self, ex):

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/ext/fast_callable.so in sage.ext.fast_callable.ExpressionTreeBuilder.call (sage/ext/fast_callable.c:5805)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/ext/fast_callable.so in sage.ext.fast_callable.ExpressionTreeBuilder.__call__ (sage/ext/fast_callable.c:5048)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression.so in sage.symbolic.expression.Expression._fast_callable_ (sage/symbolic/expression.cpp:39203)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression_conversions.pyc in fast_callable(ex, etb)
   1429 
   1430     """
-> 1431     return FastCallableConverter(ex, etb)()
   1432 
   1433 class RingConverter(Converter):

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression_conversions.pyc in __call__(self, ex)
    211             if getattr(self, 'use_fake_div', False) and operator is _operator.mul:
    212                 div = self.get_fake_div(ex)
--> 213                 return self.arithmetic(div, div.operator())
    214             return self.arithmetic(ex, operator)
    215         elif operator in relation_operators:

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression_conversions.pyc in arithmetic(self, ex, operator)
   1369         elif operator is _operator.neg:
   1370             return self.etb.call(operator, operands[0])
-> 1371         return reduce(lambda x,y: self.etb.call(operator, x,y), operands)
   1372 
   1373     def symbol(self, ex):

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression_conversions.pyc in <lambda>(x, y)
   1369         elif operator is _operator.neg:
   1370             return self.etb.call(operator, operands[0])
-> 1371         return reduce(lambda x,y: self.etb.call(operator, x,y), operands)
   1372 
   1373     def symbol(self, ex):

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/ext/fast_callable.so in sage.ext.fast_callable.ExpressionTreeBuilder.call (sage/ext/fast_callable.c:5805)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/ext/fast_callable.so in sage.ext.fast_callable.ExpressionTreeBuilder.__call__ (sage/ext/fast_callable.c:5048)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression.so in sage.symbolic.expression.Expression._fast_callable_ (sage/symbolic/expression.cpp:39203)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression_conversions.pyc in fast_callable(ex, etb)
   1429 
   1430     """
-> 1431     return FastCallableConverter(ex, etb)()
   1432 
   1433 class RingConverter(Converter):

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/symbolic/expression_conversions.pyc in __call__(self, ex)
    202         except TypeError, err:
    203             if 'self must be a numeric expression' not in err:
--> 204                 raise err
    205 
    206         operator = ex.operator()

TypeError: unable to coerce to a real number
sage: load("series.sage")
sage: load("series.sage")
sage: load("series.sage")
sage: load("series.sage")
sage: min(8,3)
8
sage: min(8,3)
3
sage: 8.min(3)
---------------------------------------------------------------------------
AttributeError                            Traceback (most recent call last)
<ipython-input-42-f0d49840e502> in <module>()
----> 1 Integer(8).min(Integer(3))

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/structure/element.so in sage.structure.element.Element.__getattr__ (sage/structure/element.c:3873)()

/home/fdmazzone/sage-6.0-i686-Linux/local/lib/python2.7/site-packages/sage/structure/misc.so in sage.structure.misc.getattr_from_other_class (sage/structure/misc.c:1696)()

AttributeError: 'sage.rings.integer.Integer' object has no attribute 'min'
sage: load("series.sage")
sage: load("series.sage")
  File "<string>", line 2
    ┌────────────────────────────────────────────────────────────────────┐
    ^
SyntaxError: invalid syntax

sage: contour_plot?
sage: load("series.sage")
verbose 0 (154: primitive.py, options) WARNING: Ignoring option 'transformation'=Cylindrical coordinate transform (height in terms of radius, azimuth)
verbose 0 (154: primitive.py, options) 
The allowed options for ContourPlot defined by a 100 x 100 data grid are:
    cmap           the name of a predefined colormap,
                        a list of colors, or an instance of a
                        matplotlib Colormap. Type: import matplotlib.cm; matplotlib.cm.datad.keys()
                        for available colormap names.
    colorbar       Include a colorbar indicating the levels                    
    colorbar_optionsa dictionary of options for colorbars                       
    contours       Either an integer specifying the number of
                        contour levels, or a sequence of numbers giving
                        the actual contours to use.
    fill           Fill contours or not                                        
    label_options  a dictionary of options for the labels                      
    labels         show line labels or not                                     
    legend_label   The label for this item in the legend.                      
    linestyles     the style of the lines to be plotted                        
    linewidths     the width of the lines to be plotted                        
    plot_points    How many points to use for plotting precision               
    zorder         The layer level in which to draw                            

verbose 0 (154: primitive.py, options) WARNING: Ignoring option 'transformation'=Cylindrical coordinate transform (height in terms of radius, azimuth)
verbose 0 (154: primitive.py, options) 
The allowed options for ContourPlot defined by a 100 x 100 data grid are:
    cmap           the name of a predefined colormap,
                        a list of colors, or an instance of a
                        matplotlib Colormap. Type: import matplotlib.cm; matplotlib.cm.datad.keys()
                        for available colormap names.
    colorbar       Include a colorbar indicating the levels                    
    colorbar_optionsa dictionary of options for colorbars                       
    contours       Either an integer specifying the number of
                        contour levels, or a sequence of numbers giving
                        the actual contours to use.
    fill           Fill contours or not                                        
    label_options  a dictionary of options for the labels                      
    labels         show line labels or not                                     
    legend_label   The label for this item in the legend.                      
    linestyles     the style of the lines to be plotted                        
    linewidths     the width of the lines to be plotted                        
    plot_points    How many points to use for plotting precision               
    zorder         The layer level in which to draw                            

verbose 0 (154: primitive.py, options) WARNING: Ignoring option 'transformation'=Cylindrical coordinate transform (height in terms of radius, azimuth)
verbose 0 (154: primitive.py, options) 
The allowed options for ContourPlot defined by a 100 x 100 data grid are:
    cmap           the name of a predefined colormap,
                        a list of colors, or an instance of a
                        matplotlib Colormap. Type: import matplotlib.cm; matplotlib.cm.datad.keys()
                        for available colormap names.
    colorbar       Include a colorbar indicating the levels                    
    colorbar_optionsa dictionary of options for colorbars                       
    contours       Either an integer specifying the number of
                        contour levels, or a sequence of numbers giving
                        the actual contours to use.
    fill           Fill contours or not                                        
    label_options  a dictionary of options for the labels                      
    labels         show line labels or not                                     
    legend_label   The label for this item in the legend.                      
    linestyles     the style of the lines to be plotted                        
    linewidths     the width of the lines to be plotted                        
    plot_points    How many points to use for plotting precision               
    zorder         The layer level in which to draw                            
f(x,y)=x^2-y^2
sage: f(x,y)=x^2-y^2
sage: contour_plot(f, (x,-3,3), (y,-3,3), colorbar=True)
contour_plot(f, (x,-3,3), (y,-3,3), cmap='winter', contours=20, fill=False, colorbar=True)
sage: contour_plot(f, (x,-3,3), (y,-3,3), cmap='winter', contours=20, fill=False, colorbar=True)

sage: kill
