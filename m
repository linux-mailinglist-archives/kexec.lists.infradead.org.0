Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A091403E2
	for <lists+kexec@lfdr.de>; Fri, 17 Jan 2020 07:22:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rv+EdXkr+8zb4+5V3RIeNGPHF8tqkBNzMKai/vepWh0=; b=uo6v1t27uE9Ckv
	p4PL0SHYC58uIA8FjHQ6wr3BZ4f9cb7kZxWEyApn/1B0AK4UWhJwAoaJyBtf+w0bYY3NmmeQNuRBZ
	YzsFGa/D4i5KLVx/ejts5HFQwvuLySfZr4b5W2Pe6eGfpyLqiuUbFrdich/lf263zb6la1KlpVedb
	jm4oqe8PYXT2UPdl2xT1VAD+M781sSf4v9tJCCpqbqSNvXT9cUbR4mNgruABJ5J0oiuD4b89K/RSk
	zIszS8mFRMB/KQJjRizmS54ykgvY0gJfBerzcUr4U+4jow26nwIWdUkyJhx4AIX0rSJGNE8mBwqAf
	svTFAcg1oLIW77SfalnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isL20-0001Pl-9H; Fri, 17 Jan 2020 06:22:56 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isL1w-0001Bx-KQ
 for kexec@lists.infradead.org; Fri, 17 Jan 2020 06:22:54 +0000
Received: by mail-io1-xd44.google.com with SMTP id x1so24752961iop.7
 for <kexec@lists.infradead.org>; Thu, 16 Jan 2020 22:22:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XwLUJZGxFkMSoVpNxliazlIIzbpsW2148sEpST8u+Yk=;
 b=db8Rl4/dF9XIar2AJhlo4Y8SUz8QaZYSlQXLPFAK0ndTMynmx9/6qk33QFuW4RAqxv
 9wteW93xo9Fr4cNUry0rNeMqjKHsIhDcyyiDhIdFwxBOoWJiuvExgE3OdPQGdCRVHzn/
 eWzGc0JlL0RjJnlaZgKQ12mIHPd7bWwzoBkjLOzotQr6RPOWfSHG3WQi02BJFmOEWxj7
 IhwcUKfRKF8URn15u6avVmbzFmGzxTNC3YX+ycKfcHM9/DLFb4m3sTEUQFuClqAv43zu
 tDC0QoE3ogBebEXYCmsTs7l4FcibIsJ2I8QSyVBIqcALK7b2bOXBXb3hZChUHs3TJKJ8
 HjFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XwLUJZGxFkMSoVpNxliazlIIzbpsW2148sEpST8u+Yk=;
 b=kaEHXm6BuZ4RJezhb9Exs2MaUwmSXtrw7EhfJWZqrvKTLRxXZbNxJqTunn5rosK8ie
 9NtvgT2dwCiklMVkE5uJCDFppEq0sMRTkAXl454FohIDIGxlWeTlMpeyGFequ+TVnaa2
 UWV8lVREjV9kWD/NG5SC7HGIoLnCJPZqByYogCPiIb3HDw+jA+eyFov2y0PRuEtNY12T
 GML2s7TCCC4EREh7OPoi1Vuj9OYQrmC7bCLipWYcfMCWsjnxnaCdZT0w4yhW0zcIG6pX
 XRclRLMzjuI3uEkBou6fKAS2AV5jImfPL2DVLKCQxcJzUlhhQ05VWtPzD+vJ3gFTQrqv
 dNLg==
X-Gm-Message-State: APjAAAW7ywKl1LaeGIfEXwobldh1bjzKMt6Pauvd0+6GYDW86D5KH5V0
 amgvAkqMfQV+C6V0imfOMSKsIXqeGFyV701B9g==
X-Google-Smtp-Source: APXvYqwB2S65jUQUahjtxfTs1C6+gwrTURfJ6hjcgwDNyR9N0FcCh3XNsdRfU+Xha+f3+zxuFusl7PZFkxVEy3OQCBk=
X-Received: by 2002:a5e:c244:: with SMTP id w4mr25542273iop.161.1579242172072; 
 Thu, 16 Jan 2020 22:22:52 -0800 (PST)
MIME-Version: 1.0
References: <1579143668-27941-1-git-send-email-kernelfans@gmail.com>
 <20200116075000.GM19428@dhcp22.suse.cz>
In-Reply-To: <20200116075000.GM19428@dhcp22.suse.cz>
From: Pingfan Liu <kernelfans@gmail.com>
Date: Fri, 17 Jan 2020 14:22:40 +0800
Message-ID: <CAFgQCTuG6K3nbKDjp3SJFLNqsx2gaC_TGWcgL0vzDcD_Gv7VdA@mail.gmail.com>
Subject: Re: [PATCH] mm/sparse: reset section's mem_map when fully deactivated
To: Michal Hocko <mhocko@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_222252_680085_92449940 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelfans[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 David Hildenbrand <david@redhat.com>, kexec@lists.infradead.org,
 Linux-MM <linux-mm@kvack.org>, Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 3:50 PM Michal Hocko <mhocko@suse.com> wrote:
>
> On Thu 16-01-20 11:01:08, Pingfan Liu wrote:
> > When fully deactivated, it is meaningless to keep the value of a section's
> > mem_map. And its mem_map will be reassigned during re-added.
> >
> > Beside this, it breaks the user space tool "makedumpfile", which makes
> > assumption that a hot-removed section having mem_map as NULL.
>
> We used to do that before ba72b4c8cf60 ("mm/sparsemem: support
> sub-section hotplug"). Dan was this an intentional change?
I do not know the purpose of this. But the change just leave section
start pfn in fully deactivated section_mem_map, and not used any more.

Thanks,
Pingfan

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
