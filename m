Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 851145C2AD
	for <lists+kexec@lfdr.de>; Mon,  1 Jul 2019 20:12:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fKQ2kNbPXtjdormgcMG3TCnzgf8d7juIp0QCrRsdNyc=; b=Xxjz8iqUbBDlQt
	KBpJLAqgDm2jYf0JDQHadvBMGxfPP+WGF3c5XevVIcU/F5giKFdJv8GMI/TA0xpnL4Q17ANydQQNo
	cpMWOf++2oYCOhQ8ii9HY7xqksmuuitatI0B7it0vQNomaDoh6ElJXxrl936KAoPyRDpRXNYeW1ZY
	OsyDjXDg+Bcp2E/JdC5JRXT/AW2mgY1dnZ/YzQa2NXWuWTH5jIPJw74RpOVQ83DwDKGe/apnaz6hr
	tXW0pCv4y9+LXfZQ2zwwP+A3EwFeASaWStWUcU6Mv7A73RaA4Z2xCgINJPNRvWdCIh7YrmSTm3OLg
	VkDozXnPSA2fq0929l8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi0mf-0004vx-MX; Mon, 01 Jul 2019 18:12:09 +0000
Received: from smtp.duncanthrax.net ([2001:470:70c5:1111::170])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi0mY-0004vG-6N
 for kexec@lists.infradead.org; Mon, 01 Jul 2019 18:12:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=duncanthrax.net; s=dkim; h=In-Reply-To:Content-Type:MIME-Version:References
 :Message-ID:Subject:Cc:To:From:Date;
 bh=AVgBC13hYlw1kbcnpEX2h0I1Q9eJcPTvTXABwzeZx0w=; b=B4YWRUd3czixaVKu+JNw8cHSMV
 eZyaeYuZIfQTJ/Hh/O0dWtmesrBkFehXj8yPBOBhT0N4/0LmAGwD+BRD5XPn8A2lhqHZ56nv9FwIt
 04kVqbgXblQWSWpha/qPpGAqHowJBBEo0CrlLSRE+d7GGhH5HjM2be1sMw/OOByqQhbc=;
Received: from [134.3.44.134] (helo=t470p.stackframe.org)
 by smtp.eurescom.eu with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.86_2) (envelope-from <svens@stackframe.org>)
 id 1hi0mV-0007Qq-9s; Mon, 01 Jul 2019 20:11:59 +0200
Date: Mon, 1 Jul 2019 20:11:57 +0200
From: Sven Schnelle <svens@stackframe.org>
To: Philipp Rudo <prudo@linux.ibm.com>
Subject: Re: [PATCH RFC] generic ELF support for kexec
Message-ID: <20190701181157.GE19243@t470p.stackframe.org>
References: <20190625185433.GA10934@t470p.stackframe.org>
 <20190701143120.20c71b30@laptop-ibm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190701143120.20c71b30@laptop-ibm>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_111202_762518_00AE4902 
X-CRM114-Status: GOOD (  41.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: linux-s390@vger.kernel.org, deller@gmx.de, kexec@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Philipp,

On Mon, Jul 01, 2019 at 02:31:20PM +0200, Philipp Rudo wrote:
> Sven Schnelle <svens@stackframe.org> wrote:
> 
> > I'm attaching the patch to this Mail. What do you think about that change?
> > s390 also uses ELF files, and (maybe?) could also switch to this implementation.
> > But i don't know anything about S/390 and don't have one in my basement. So
> > i'll leave s390 to the IBM folks.
> 
> I'm afraid there isn't much code here s390 can reuse. I see multiple problems
> in kexec_elf_load:
> 
> * while loading the phdrs we also need to setup some data structures to pass
>   to the next kernel
> * the s390 kernel needs to be loaded to a fixed address
> * there is no support to load a crash kernel
> 
> Of course that could all be fixed/worked around by introducing some arch hooks.
> But when you take into account that the whole elf loader on s390 is ~100 lines
> of code, I don't think it is worth it.

That's fine. I didn't really look into the S/390 Loader, and just wanted to let
the IBM people know.

> More comments below.
>  
> [...]
> 
> > diff --git a/include/linux/kexec.h b/include/linux/kexec.h
> > index b9b1bc5f9669..49b23b425f84 100644
> > --- a/include/linux/kexec.h
> > +++ b/include/linux/kexec.h
> > @@ -216,6 +216,41 @@ extern int crash_prepare_elf64_headers(struct crash_mem *mem, int kernel_map,
> >  				       void **addr, unsigned long *sz);
> >  #endif /* CONFIG_KEXEC_FILE */
> >  
> > +#ifdef CONFIG_KEXEC_FILE_ELF
> > +
> > +struct kexec_elf_info {
> > +	/*
> > +	 * Where the ELF binary contents are kept.
> > +	 * Memory managed by the user of the struct.
> > +	 */
> > +	const char *buffer;
> > +
> > +	const struct elfhdr *ehdr;
> > +	const struct elf_phdr *proghdrs;
> > +	struct elf_shdr *sechdrs;
> > +};
> 
> Do i understand this right? elf_info->buffer contains the full elf file and
> elf_info->ehdr is a (endianness translated) copy of the files ehdr?
> 
> If so ...
> 
> > +void kexec_free_elf_info(struct kexec_elf_info *elf_info);
> > +
> > +int kexec_build_elf_info(const char *buf, size_t len, struct elfhdr *ehdr,
> > +			  struct kexec_elf_info *elf_info);
> > +
> > +int kexec_elf_kernel_load(struct kimage *image, struct kexec_buf *kbuf,
> > +			  char *kernel_buf, unsigned long kernel_len,
> > +			  unsigned long *kernel_load_addr);
> > +
> > +int kexec_elf_probe(const char *buf, unsigned long len);
> > +
> > +int kexec_elf_load(struct kimage *image, struct elfhdr *ehdr,
> > +			 struct kexec_elf_info *elf_info,
> > +			 struct kexec_buf *kbuf,
> > +			 unsigned long *lowest_load_addr);
> > +
> > +int kexec_elf_load(struct kimage *image, struct elfhdr *ehdr,
> > +			 struct kexec_elf_info *elf_info,
> > +			 struct kexec_buf *kbuf,
> > +			 unsigned long *lowest_load_addr);
> 
> ... you could simplify the arguments by dropping the ehdr argument. The
> elf_info should contain all the information needed. Furthermore the kexec_buf
> also contains a pointer to its kimage. So you can drop that argument as well.
> 
> An other thing is that you kzalloc the memory needed for proghdrs and sechdrs
> but expect the user of those functions to provide the memory needed for ehdr.
> Wouldn't it be more consistent to also kzalloc the ehdr?
> 

Good point. I'll think about it. I would like to do that in an extra patch,
as it is not a small style change.

> 
> > diff --git a/kernel/kexec_file_elf.c b/kernel/kexec_file_elf.c
> > new file mode 100644
> > index 000000000000..bb966c93492c
> > --- /dev/null
> > +++ b/kernel/kexec_file_elf.c
> > @@ -0,0 +1,574 @@
> 
> [...]
> 
> > +static uint64_t elf64_to_cpu(const struct elfhdr *ehdr, uint64_t value)
> > +{
> > +	if (ehdr->e_ident[EI_DATA] == ELFDATA2LSB)
> > +		value = le64_to_cpu(value);
> > +	else if (ehdr->e_ident[EI_DATA] == ELFDATA2MSB)
> > +		value = be64_to_cpu(value);
> > +
> > +	return value;
> > +}
> > +
> > +static uint16_t elf16_to_cpu(const struct elfhdr *ehdr, uint16_t value)
> > +{
> > +	if (ehdr->e_ident[EI_DATA] == ELFDATA2LSB)
> > +		value = le16_to_cpu(value);
> > +	else if (ehdr->e_ident[EI_DATA] == ELFDATA2MSB)
> > +		value = be16_to_cpu(value);
> > +
> > +	return value;
> > +}
> > +
> > +static uint32_t elf32_to_cpu(const struct elfhdr *ehdr, uint32_t value)
> > +{
> > +	if (ehdr->e_ident[EI_DATA] == ELFDATA2LSB)
> > +		value = le32_to_cpu(value);
> > +	else if (ehdr->e_ident[EI_DATA] == ELFDATA2MSB)
> > +		value = be32_to_cpu(value);
> > +
> > +	return value;
> > +}
> 
> What are the elf*_to_cpu good for? In general I'd assume that kexec loads a
> kernel for the same architecture it is running on. So the new kernel should
> also have the same endianness like the one which loads it. Is this a
> ppcle/ppcbe issue?

Don't know. I would agree, but i'm not an powerpc expert.

> Furthermore the current order is 64->16->32, which my OCPD absolutely hates :)

Fixed.

> [...]
> 
> > +/**
> > + * elf_is_shdr_sane - check that it is safe to use the section header
> > + * @buf_len:	size of the buffer in which the ELF file is loaded.
> > + */
> > +static bool elf_is_shdr_sane(const struct elf_shdr *shdr, size_t buf_len)
> > +{
> > +	bool size_ok;
> > +
> > +	/* SHT_NULL headers have undefined values, so we can't check them. */
> > +	if (shdr->sh_type == SHT_NULL)
> > +		return true;
> > +
> > +	/* Now verify sh_entsize */
> > +	switch (shdr->sh_type) {
> > +	case SHT_SYMTAB:
> > +		size_ok = shdr->sh_entsize == sizeof(Elf_Sym);
> > +		break;
> > +	case SHT_RELA:
> > +		size_ok = shdr->sh_entsize == sizeof(Elf_Rela);
> > +		break;
> > +	case SHT_DYNAMIC:
> > +		size_ok = shdr->sh_entsize == sizeof(Elf_Dyn);
> > +		break;
> > +	case SHT_REL:
> > +		size_ok = shdr->sh_entsize == sizeof(Elf_Rel);
> > +		break;
> > +	case SHT_NOTE:
> > +	case SHT_PROGBITS:
> > +	case SHT_HASH:
> > +	case SHT_NOBITS:
> > +	default:
> > +		/*
> > +		 * This is a section whose entsize requirements
> > +		 * I don't care about.  If I don't know about
> > +		 * the section I can't care about it's entsize
> > +		 * requirements.
> > +		 */
> > +		size_ok = true;
> > +		break;
> > +	}
> > +
> > +	if (!size_ok) {
> > +		pr_debug("ELF section with wrong entry size.\n");
> > +		return false;
> > +	} else if (shdr->sh_addr + shdr->sh_size < shdr->sh_addr) {
> > +		pr_debug("ELF section address wraps around.\n");
> > +		return false;
> > +	}
> > +
> > +	if (shdr->sh_type != SHT_NOBITS) {
> > +		if (shdr->sh_offset + shdr->sh_size < shdr->sh_offset) {
> > +			pr_debug("ELF section location wraps around.\n");
> > +			return false;
> > +		} else if (shdr->sh_offset + shdr->sh_size > buf_len) {
> > +			pr_debug("ELF section not in file.\n");
> > +			return false;
> > +		}
> > +	}
> > +
> > +	return true;
> > +}
> > +
> > +static int elf_read_shdr(const char *buf, size_t len, struct kexec_elf_info *elf_info,
> > +			 int idx)
> > +{
> > +	struct elf_shdr *shdr = &elf_info->sechdrs[idx];
> > +	const struct elfhdr *ehdr = elf_info->ehdr;
> > +	const char *sbuf;
> > +	struct elf_shdr *buf_shdr;
> > +
> > +	sbuf = buf + ehdr->e_shoff + idx * sizeof(*buf_shdr);
> > +	buf_shdr = (struct elf_shdr *) sbuf;
> > +
> > +	shdr->sh_name      = elf32_to_cpu(ehdr, buf_shdr->sh_name);
> > +	shdr->sh_type      = elf32_to_cpu(ehdr, buf_shdr->sh_type);
> > +	shdr->sh_addr      = elf_addr_to_cpu(ehdr, buf_shdr->sh_addr);
> > +	shdr->sh_offset    = elf_addr_to_cpu(ehdr, buf_shdr->sh_offset);
> > +	shdr->sh_link      = elf32_to_cpu(ehdr, buf_shdr->sh_link);
> > +	shdr->sh_info      = elf32_to_cpu(ehdr, buf_shdr->sh_info);
> > +
> > +	/*
> > +	 * The following fields have a type equivalent to Elf_Addr
> > +	 * both in 32 bit and 64 bit ELF.
> > +	 */
> > +	shdr->sh_flags     = elf_addr_to_cpu(ehdr, buf_shdr->sh_flags);
> > +	shdr->sh_size      = elf_addr_to_cpu(ehdr, buf_shdr->sh_size);
> > +	shdr->sh_addralign = elf_addr_to_cpu(ehdr, buf_shdr->sh_addralign);
> > +	shdr->sh_entsize   = elf_addr_to_cpu(ehdr, buf_shdr->sh_entsize);
> > +
> > +	return elf_is_shdr_sane(shdr, len) ? 0 : -ENOEXEC;
> > +}
> > +
> > +/**
> > + * elf_read_shdrs - read the section headers from the buffer
> > + *
> > + * This function assumes that the section header table was checked for sanity.
> > + * Use elf_is_ehdr_sane() if it wasn't.
> > + */
> > +static int elf_read_shdrs(const char *buf, size_t len,
> > +			  struct kexec_elf_info *elf_info)
> > +{
> > +	size_t shdr_size, i;
> > +
> > +	/*
> > +	 * e_shnum is at most 65536 so calculating
> > +	 * the size of the section header cannot overflow.
> > +	 */
> > +	shdr_size = sizeof(struct elf_shdr) * elf_info->ehdr->e_shnum;
> > +
> > +	elf_info->sechdrs = kzalloc(shdr_size, GFP_KERNEL);
> > +	if (!elf_info->sechdrs)
> > +		return -ENOMEM;
> > +
> > +	for (i = 0; i < elf_info->ehdr->e_shnum; i++) {
> > +		int ret;
> > +
> > +		ret = elf_read_shdr(buf, len, elf_info, i);
> > +		if (ret) {
> > +			kfree(elf_info->sechdrs);
> > +			elf_info->sechdrs = NULL;
> > +			return ret;
> > +		}
> > +	}
> > +
> > +	return 0;
> > +}
> 
> In the end you only use the phdrs. So in theory you can drop everything shdr
> related. Although keeping it would be 'formally more correct'.

Correct, done.
 
> [...]
> 
> > +/**
> > + * kexec_free_elf_info - free memory allocated by elf_read_from_buffer
> > + */
> > +void kexec_free_elf_info(struct kexec_elf_info *elf_info)
> > +{
> > +	kfree(elf_info->proghdrs);
> > +	kfree(elf_info->sechdrs);
> > +	memset(elf_info, 0, sizeof(*elf_info));
> > +}
> > +EXPORT_SYMBOL(kexec_free_elf_info);
> 
> Why are you exporting these functions? Is there any kexec implementation out
> there which is put into a module? Do you even want that to be possible?

My fault. Fixed.

> > +/**
> > + * kexec_build_elf_info - read ELF executable and check that we can use it
> > + */
> > +int kexec_build_elf_info(const char *buf, size_t len, struct elfhdr *ehdr,
> > +			  struct kexec_elf_info *elf_info)
> > +{
> > +	int i;
> > +	int ret;
> > +
> > +	ret = elf_read_from_buffer(buf, len, ehdr, elf_info);
> > +	if (ret)
> > +		return ret;
> > +
> > +	/* Big endian vmlinux has type ET_DYN. */
> > +	if (ehdr->e_type != ET_EXEC && ehdr->e_type != ET_DYN) {
> 
> s390 is big endian and it's vmlinux has type ET_EXEC. So I assume that this is
> a ppc issue?

Again, don't know. :)

> > +		pr_err("Not an ELF executable.\n");
> > +		goto error;
> > +	} else if (!elf_info->proghdrs) {
> > +		pr_err("No ELF program header.\n");
> > +		goto error;
> > +	}
> > +
> > +	for (i = 0; i < ehdr->e_phnum; i++) {
> > +		/*
> > +		 * Kexec does not support loading interpreters.
> > +		 * In addition this check keeps us from attempting
> > +		 * to kexec ordinay executables.
> > +		 */
> > +		if (elf_info->proghdrs[i].p_type == PT_INTERP) {
> > +			pr_err("Requires an ELF interpreter.\n");
> > +			goto error;
> > +		}
> > +	}
> > +
> > +	return 0;
> > +error:
> > +	kexec_free_elf_info(elf_info);
> > +	return -ENOEXEC;
> > +}
> > +EXPORT_SYMBOL(kexec_build_elf_info);
> 
> [...]
> 
> > +int kexec_elf_probe(const char *buf, unsigned long len)
> > +{
> > +	struct elfhdr ehdr;
> > +	struct kexec_elf_info elf_info;
> > +	int ret;
> > +
> > +	ret = kexec_build_elf_info(buf, len, &ehdr, &elf_info);
> 
> On s390 I only check the elf magic when probing. That's because the image
> loader cannot reliably check the image and thus accepts everything that is
> given to it. That also means that any elf file the elf probe rejects (e.g.
> because it has a phdr with type PT_INTERP) is passed on to the image loader,
> which happily takes it.
> 
> If you plan to also add an image loader you should keep that in mind.
> 
> Thanks
> Philipp
> 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
