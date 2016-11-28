#include"xc8_config.h"

#define POOL_SIZE 100 // Or however big it can be without running out of space

uint8_t mem_pool[POOL_SIZE];
#define pool_end (mem_pool+POOL_SIZE)
uint8_t *next_alloc;
void *malloc(uint16_t size)
{
  if (pool_end - next_alloc <= size)
  {
    uint8_t *ret = next_alloc;
    next_alloc += size;
    return ret;
  }
  else
  {
      while(1);//no memory error 
  }
    return 0;
}

void free(void *dat)
{
  next_alloc = (uint8_t *)dat;
}

void *realloc(void *dat, uint16_t size)
{
   free(dat);
   return malloc(size);
}