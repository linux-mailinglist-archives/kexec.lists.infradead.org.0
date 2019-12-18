Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB93123D6D
	for <lists+kexec@lfdr.de>; Wed, 18 Dec 2019 03:47:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TUmNOt5iiQ7VgW5PgFxsY1elDLF+c/SHETfJoFh/HKA=; b=Ip8VGPwlYSZBj6
	oDv/7iOz+K/PX+YtlD5XuIEHLdSGHkhhSoIE6C5kHEoKvLX5HZ1NWpDYMrhQFjh6ZTOelHxPubSt7
	/Xh7mOojan9KByNzlkKQqvdyXyPvU8skxkeQ747BmIJjrh8punVZf0BQggHpnzwWoNH8oC03MXTFe
	K2aKnu/4ZVSEZhnOn2MLk5hM70mtPSy3+pZotW5w5BRHiIGn9JOvOvUwrMCBtV3AmpOIiwsH8olpb
	lgv27isSE5FquzmOIFqoIB3Wk6crW7n3RZpRtFJQdNS1ohyEifgrDOUWe+eRSABIYvitFHjzfobeS
	DijNMuBWAZ853Ji37Bkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihPMx-0002aa-63; Wed, 18 Dec 2019 02:47:23 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihPMr-0002Y6-6a
 for kexec@lists.infradead.org; Wed, 18 Dec 2019 02:47:20 +0000
Received: by mail-pj1-x1041.google.com with SMTP id s94so646579pjc.1
 for <kexec@lists.infradead.org>; Tue, 17 Dec 2019 18:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wsPAwC7hLI91SCjTpAZUCPQ91St6v3cbC+Ip21Rr+uY=;
 b=pG5u4frp98Dihl8hTKyW/mIYxxKMNJ/wRhOmXIAKqiZewSR7FlpXGRxe9q+YO4Tbjy
 D5jHa98Ta3Wm6in0jOdANbWsiUC+jEoQoA3rFqGjIaoYV6Gztftkn6dERGttHH/SfFj9
 J+iCwkg+T9h10KGhuVsfEcIuZhKWD7LAVIQfRcth+noYo0aL27s1omuT60x3UgH7X7Tr
 B+/n3UPCfuDTvlsrhxWCPNwu/6dg6DjBT93EDfGsoZ1LEwje4QDsGUibIje9AJrbSyeZ
 ey/wagbtQQZuW+zYVCuCjAfa9s54Z7ALTyORdk9wDSoM+qZLeKw7sNjDpMU/VlTuZ4V7
 BXlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=wsPAwC7hLI91SCjTpAZUCPQ91St6v3cbC+Ip21Rr+uY=;
 b=qoHZTk/psOBq8Sb9vhLxNYhSDJYdaDdlSDOsYsNosbZKmXm/irZrTXErW5nU0/iekt
 UeTlnqObradidAl088Zq5SXgRdWWQIMF5mOKk0ZAAfGL7nnYo/O5530+NUr8F8BuJbc5
 8JwqPSRfjKvXmtAW+0eDgn0ZXURHFep0kMX8ld07+TefpZSUegOG5FtDZutJlGRX/wPh
 +Jttr32LpQhFZ79gxysMgMNSyQJ8mbcXG/4BCHFC84w1y32ULFuBLrnbuLh9onOaKlqs
 U+Kaj7oOd36bWZWtJ3VQENbNEM502AO4gCoTT2D7Z8uvhlY/iQcVJSExKNLvlh/JZJcu
 JCFA==
X-Gm-Message-State: APjAAAWR8s6iNfyJWxZkmS3lzigeOz4T5FwyR55cdBhdsngDEF5iHI0m
 p8eYWIGIxMVAOKabXf/sq0CTkVT//Bk=
X-Google-Smtp-Source: APXvYqwVAxkKlHkG+qpaDu0xzx+8MIX3RzRZcsNH7hpf3KGRWzqeqQUqt5P40ZGqLejWcAeYC9PmVw==
X-Received: by 2002:a17:902:9f83:: with SMTP id g3mr7263plq.234.1576637235234; 
 Tue, 17 Dec 2019 18:47:15 -0800 (PST)
Received: from linaro.org ([121.95.100.191])
 by smtp.googlemail.com with ESMTPSA id b98sm338200pjc.16.2019.12.17.18.47.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Dec 2019 18:47:14 -0800 (PST)
Date: Wed, 18 Dec 2019 11:48:50 +0900
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: Masayoshi Mizuma <msys.mizuma@gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: kexec: allocate memory space avoiding
 reserved regions
Message-ID: <20191218024849.GA7386@linaro.org>
Mail-Followup-To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Masayoshi Mizuma <msys.mizuma@gmail.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 Simon Horman <horms@verge.net.au>,
 James Morse <james.morse@arm.com>,
 kexec mailing list <kexec@lists.infradead.org>
References: <20190111095946.28070-1-takahiro.akashi@linaro.org>
 <20190111095946.28070-3-takahiro.akashi@linaro.org>
 <20191213200430.uxuebdavpq64scfh@gabell>
 <CACi5LpOKCfgjmxo59sT5bVN0qHvYapy1NRXn0F=_By-vp0g=sA@mail.gmail.com>
 <20191216141606.nhosl4v233mtvu4u@gabell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216141606.nhosl4v233mtvu4u@gabell>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_184717_272512_29262C8C 
X-CRM114-Status: GOOD (  22.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kexec mailing list <kexec@lists.infradead.org>,
 Bhupesh Sharma <bhsharma@redhat.com>, Simon Horman <horms@verge.net.au>,
 James Morse <james.morse@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 09:16:06AM -0500, Masayoshi Mizuma wrote:
> On Mon, Dec 16, 2019 at 11:22:56AM +0530, Bhupesh Sharma wrote:
> > Thanks Masa,

[...]

> > Since this is an old thread, it would be useful for people looking at
> > the same, if you can add some comments/details about why you think
> > this nit is needed.
> 
> Thank you for your follow up and I'm sorry I didn't explain it.
> mem_regions_alloc_and_exclude() may fail in case realloc() or
> mem_region_exclude() fail, so it would be better to add the error
> handling.
> 
> > 
> > Also if Akashi agrees with the same, it would be better if he could
> > send a rebased version of the patchset (with your comments addressed),
> > so that the same can be picked for upstream kexec-tools cleanly.
> 
> Sounds great!

I have almost forgotten the background of this patch.
If you see that it is still useful, please feel free to re-post it.

Thanks,
-Takahiro Akashi

> - Masa
> 
> > 
> > @Akashi- Hi Akashi, Please let us know your views.
> > 
> > Thanks,
> > Bhupesh
> > 
> > > +                     dbgprintf("%s:-      %016llx - %016llx\n",
> > > > +                                     __func__, start, end);
> > > > +             }
> > > > +     }
> > > > +
> > > > +     fclose(fp);
> > > > +
> > > > +     *range = memranges.ranges;
> > > > +     *ranges = memranges.size;
> > > >
> > > >       /* As a fallback option, we can try determining the PHYS_OFFSET
> > > >        * value from the '/proc/iomem' entries as well.
> > > > @@ -976,52 +1041,15 @@ static int get_memory_ranges_iomem_cb(void *data, int nr, char *str,
> > > >        * between the user-space and kernel space 'PHYS_OFFSET'
> > > >        * value.
> > > >        */
> > > > -     set_phys_offset(r->start, "iomem");
> > > > +     if (memranges.size)
> > > > +             set_phys_offset(memranges.ranges[0].start, "iomem");
> > > >
> > > > -     dbgprintf("%s: %016llx - %016llx : %s", __func__, r->start,
> > > > -             r->end, str);
> > > > +     dbgprint_mem_range("System RAM ranges;",
> > > > +                             memranges.ranges, memranges.size);
> > > >
> > > >       return 0;
> > > >  }
> > > >
> > > > -/**
> > > > - * get_memory_ranges_iomem - Try to get the memory ranges from
> > > > - * /proc/iomem.
> > > > - */
> > > > -
> > > > -static int get_memory_ranges_iomem(struct memory_range *array,
> > > > -     unsigned int *count)
> > > > -{
> > > > -     *count = kexec_iomem_for_each_line(NULL,
> > > > -             get_memory_ranges_iomem_cb, array);
> > > > -
> > > > -     if (!*count) {
> > > > -             dbgprintf("%s: failed: No RAM found.\n", __func__);
> > > > -             return EFAILED;
> > > > -     }
> > > > -
> > > > -     return 0;
> > > > -}
> > > > -
> > > > -/**
> > > > - * get_memory_ranges - Try to get the memory ranges some how.
> > > > - */
> > > > -
> > > > -int get_memory_ranges(struct memory_range **range, int *ranges,
> > > > -     unsigned long kexec_flags)
> > > > -{
> > > > -     static struct memory_range array[KEXEC_SEGMENT_MAX];
> > > > -     unsigned int count;
> > > > -     int result;
> > > > -
> > > > -     result = get_memory_ranges_iomem(array, &count);
> > > > -
> > > > -     *range = result ? NULL : array;
> > > > -     *ranges = result ? 0 : count;
> > > > -
> > > > -     return result;
> > > > -}
> > > > -
> > > >  int arch_compat_trampoline(struct kexec_info *info)
> > > >  {
> > > >       return 0;
> > > > --
> > > > 2.19.1
> > > >
> > > >
> > >
> > 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
