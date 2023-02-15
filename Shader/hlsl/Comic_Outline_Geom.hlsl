#ifndef COMIC_OUTLINE_GEOM
#define COMIC_OUTLINE_GEOM

[maxvertexcount(9)]
void geom(triangle v2g v[3], inout TriangleStream<g2f> TriStream)
{
    g2f o;

    if(_UseOutline)
    {
        for(int i = 0;i < 3;i++)
        {
            o.vertex = v[i].pos;
            
            TriStream.Append(o);
        }
        TriStream.RestartStrip();
    }
}
#endif