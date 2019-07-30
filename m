Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A1F7A5F6
	for <lists+kexec@lfdr.de>; Tue, 30 Jul 2019 12:26:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3O5feIcDpXUKrTkmFD/lAW2Hpkb4jaEU115A9NqyXsg=; b=UTD+KsvG8DxDe5
	H63vQVN4B1+FsOTDxLmHZ10lZT8JW9KNVlCZm8NqH8OkLpvjORVDJ93fPv6oSEOepu+7cZ85KYZ4Z
	GqBB8SpWMNAdhaVAwSpcy9ihNhH0KP2ATfVEAb4JmrqfcAw5jSA872LQxhO4w9F8GWOWGRIvNvd11
	o4MvtJuRt56Wao8vgHGQUaQqhjdlSaMFhUjDeeRqZc33ZTPIGCzoy3Mrc1CC99QqSrKZaBq+/8pWa
	3dQpYj8CLZGu720Lh+4QyT7yshBctxfQudWIDdnJRK2d+wZxfXoPaQ9aC0JzBPkTO2V+qKwbvXNCt
	BLPYl26gzm0XwCfSkz+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsPKd-0000FF-OC; Tue, 30 Jul 2019 10:26:12 +0000
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsPKW-0000Do-KX
 for kexec@lists.infradead.org; Tue, 30 Jul 2019 10:26:06 +0000
Received: by mail-lj1-f196.google.com with SMTP id t28so61538391lje.9
 for <kexec@lists.infradead.org>; Tue, 30 Jul 2019 03:26:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3AZrte9zGIaQdupl3qaH2oH0hTd9+Q2ZgEdDma4uaQY=;
 b=STpoydfQrbwm3PfkE2ZvPHQ0U1qzFQvyK0yCclWirIy6zED3fmrRVbpU51a8nyopke
 HaEEo1OVNHC6hPiKqLu8oa5l3WjNiQfgi3Fe5LS/n2JLN6jaY4lHJQhruuvjnSucKCCT
 NCc4RvQsiV998ml6558XgmRp/+oFquLkMMAiw4y748EDiVC72QJB+BML62fy6FapI07v
 oxg8nPwCsxxsKmpgM1Prods99kqO7bVTL5tyqImljuHxWSiwWQ1dsdCXBzUM1j1MInUE
 eNVVztAWVx88XompS/qYl4JUX3u9rM6uVfiazzMjOWvAZSt6ePQT4wMe8RtdZ5wYJLSh
 wiuQ==
X-Gm-Message-State: APjAAAVIa5+FNBpy9Nc7zj1xTHuyNHj0GcL9/0JMy5KKPLqoue8FFfcG
 vnzXrmzlkjVRMWIM5YwZKYUihz5ZtYuHYQ8E1xFGiw==
X-Google-Smtp-Source: APXvYqzqUCZfgnM9GrjGVPUd+zN+L+6rlwO3ATkueVi4I74ZRdHqk4Sa3JJmPLYPUXnNt++vpLFO0GqoKEtXeB8Psy8=
X-Received: by 2002:a2e:8945:: with SMTP id b5mr59164374ljk.93.1564482360720; 
 Tue, 30 Jul 2019 03:26:00 -0700 (PDT)
MIME-Version: 1.0
References: <patch.git-ff1c9045ebdc.your-ad-here.call-01564402297-ext-5690@work.hours>
In-Reply-To: <patch.git-ff1c9045ebdc.your-ad-here.call-01564402297-ext-5690@work.hours>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Tue, 30 Jul 2019 15:55:48 +0530
Message-ID: <CACi5LpNQ8bEC+2KE=DZaUjeSmA46U=3u8m2WQYJEexK7uE0L+A@mail.gmail.com>
Subject: Re: [PATCH] kexec: restore arch_kexec_kernel_image_probe declaration
To: Vasily Gorbik <gor@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_032604_847202_415994C3 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Vasily,

On Mon, Jul 29, 2019 at 5:44 PM Vasily Gorbik <gor@linux.ibm.com> wrote:
>
> arch_kexec_kernel_image_probe function declaration has been removed by
> commit 9ec4ecef0af7 ("kexec_file,x86,powerpc: factor out kexec_file_ops
> functions"). Still this function is overridden by couple of architectures
> and proper prototype declaration is therefore important, so bring it
> back. This fixes the following sparse warning on s390:
> arch/s390/kernel/machine_kexec_file.c:333:5: warning: symbol 'arch_kexec_kernel_image_probe' was not declared. Should it be static?

May be it would be better to add a 'Fixes:' tag here (but may be it
can be added while picking it into the tree). With the above minor
nitpick:

Reviewed-by: Bhupesh Sharma <bhsharma@redhat.com>

Thanks,
Bhupesh

> Signed-off-by: Vasily Gorbik <gor@linux.ibm.com>
> ---
>  include/linux/kexec.h | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/include/linux/kexec.h b/include/linux/kexec.h
> index 1740fe36b5b7..f7529d120920 100644
> --- a/include/linux/kexec.h
> +++ b/include/linux/kexec.h
> @@ -183,6 +183,8 @@ int kexec_purgatory_get_set_symbol(struct kimage *image, const char *name,
>                                    bool get_value);
>  void *kexec_purgatory_get_symbol_addr(struct kimage *image, const char *name);
>
> +int __weak arch_kexec_kernel_image_probe(struct kimage *image, void *buf,
> +                                        unsigned long buf_len);
>  void * __weak arch_kexec_kernel_image_load(struct kimage *image);
>  int __weak arch_kexec_apply_relocations_add(struct purgatory_info *pi,
>                                             Elf_Shdr *section,
> --
> 2.21.0
>
>
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
