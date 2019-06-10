Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B24C3B363
	for <lists+kexec@lfdr.de>; Mon, 10 Jun 2019 12:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fQPg7MjSESBz0xyqYA878O5U56q3nobXx57CzcT8Kdg=; b=L1GcoXjrVg2fL/M24y8YNBjW/
	Zq7ySBIjSmoG1F+vNKFr3cCcDLrg6G0ZDRO88B4RG65zhr5uL2LPIplF6qDDo8QZYi3c4CoI7myeJ
	3xoXmydoTcejFaP4DRGI+eqLdVRveCF/I6ctH/t3827fxI6nlJ4b9rdM9UJk7jfxZLtDRuRBuN4Tr
	RgFUTdiz6T24e8l/TcPFhXc1jQTWh+sVJX5Rdo1FKRNp6OAPdXZuCWPFXoWvSoWNciE8swZQe6wFk
	0QLBvfL8EnNlmscvfOUZd/D3z2JBen3dZn9JUTrsYUbqDUELgYNI3nO9u+2YQQtnKYGchtQbGJ31q
	fwbR5ymrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haHje-0005r3-RZ; Mon, 10 Jun 2019 10:41:06 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haHjV-0005jF-Lt
 for kexec@lists.infradead.org; Mon, 10 Jun 2019 10:40:59 +0000
Received: by mail-pf1-f193.google.com with SMTP id i189so5058286pfg.10
 for <kexec@lists.infradead.org>; Mon, 10 Jun 2019 03:40:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=eqqPVC0c1XlQFgVxlo4LALhKZmVo/wVOLAMo2XNQ5UU=;
 b=CBapipgZxTpSHWf6812yUp7nXurDvPibDaKWoqS49ZH1pLki63phK+6iOmXz7UYqMH
 5hoHR7WSLOpMYnmo72wCyr7RVyjHuj01iW1RL8rYk13Q6RA2QfCcKAb6P0YnI0FvJ2L1
 Y5C2jmZlOqKFYWxh/NGeVoDdKssH/cFhyIBsQSi/C0Y+HHlVI+U/ogrgWhMNirczyBSs
 6AprR85ucHIRKRwwRr6xwMK+xX7Kq3E4ljhAkW4XoJvRhNMgdmFFP/aCA9FuUmqTLQ9U
 O9299sZCGGwBt8OLrqfCcijB5nPDs7cP5VS1ZzdMbXVv/zQEGcS1XmhD3XBy2n+hNUPz
 pjcA==
X-Gm-Message-State: APjAAAVBVZ0gakzL09XUL4hELQqR2ole4oDdkEQYmASfm2M+HyExuX/i
 +9zVNyRoYC/H3dF0XrtMPA8f6uWV3d4=
X-Google-Smtp-Source: APXvYqw8Vse3YJUP0Pt+OEyifpBA/I6fIUUumR68GqG3ox2Jqwzp2lr9PbBxjmLGv0pNXVtVvvFYxA==
X-Received: by 2002:a17:90a:26e4:: with SMTP id
 m91mr20573357pje.93.1560163256440; 
 Mon, 10 Jun 2019 03:40:56 -0700 (PDT)
Received: from localhost.localdomain ([122.177.221.32])
 by smtp.gmail.com with ESMTPSA id c129sm19729082pfa.106.2019.06.10.03.40.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 03:40:55 -0700 (PDT)
Subject: Re: [PATCH v2 00/12] 52-bit kernel + user VAs
To: Steve Capper <steve.capper@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20190528161026.13193-1-steve.capper@arm.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <762411c4-1148-a10e-2a79-d2c9e38bc46e@redhat.com>
Date: Mon, 10 Jun 2019 16:10:50 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190528161026.13193-1-steve.capper@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_034057_715117_60480654 
X-CRM114-Status: GOOD (  24.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, marc.zyngier@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Steve,

Thanks for the v2. I still did not get much time to go through this in 
deep and have a go with the same on LVA supporting prototype platforms 
or old CPUs (which don't support ARMv8.2 LVA/LPA extensions) I have. May 
be I will give this a quick check on the same in a day or two.

On 05/28/2019 09:40 PM, Steve Capper wrote:
> This patch series adds support for 52-bit kernel VAs using some of the
> machinery already introduced by the 52-bit userspace VA code in 5.0.
> 
> As 52-bit virtual address support is an optional hardware feature,
> software support for 52-bit kernel VAs needs to be deduced at early boot
> time. If HW support is not available, the kernel falls back to 48-bit.
> 
> A significant proportion of this series focuses on "de-constifying"
> VA_BITS related constants.
> 
> In order to allow for a KASAN shadow that changes size at boot time, one
> must fix the KASAN_SHADOW_END for both 48 & 52-bit VAs and "grow" the
> start address. Also, it is highly desirable to maintain the same
> function addresses in the kernel .text between VA sizes. Both of these
> requirements necessitate us to flip the kernel address space halves s.t.
> the direct linear map occupies the lower addresses.
> 
> In V2 of this series (apologies for the long delay from V1), the major
> change is that PAGE_OFFSET is retained as a constant. This allows for
> much faster virt_to_page computations. This is achieved by expanding the
> size of the VMEMMAP region to accommodate a disjoint 52-bit/48-bit
> direct linear map. This has been found to work well in my testing, but I
> would appreciate any feedback on this if it needs changing. To aid with
> git bisect, this logic is broken down into a few smaller patches.
> 
> As far as I'm aware, there are two outstanding issues with this series
> that need to be resolved:
>   1) Is the code patching for ttbr1_offset safe? I need to analyse this
>      a little more,
>   2) How can this memory map be advertised to kdump tools/documentation?
>      I was planning on getting the kernel VA structure agreed on, then I
>      would add the relevant exports/documentation.


Indeed, in the absence of corresponding changes to the Documentation 
section,
it is hard to visualize the changes being made in the memory map.

Also I would suggest that we note in the patchset itself (may be the git 
log) that kdump tools (or even crash for that matter) will be broken 
with this patchset - to prevent kernel bugs being reported.

BTW, James and I are already discussing more coherent methods (see [0]) 
to manage this exporting of information to user-land (so to that we can 
save ourselves from requiring to export new variables in the vmcoreinfo 
in case we have similar changes to the virtual/physical address spaces 
in future).

I will work on and send a patchset addressing the same shortly.

[0]. http://lists.infradead.org/pipermail/kexec/2019-June/023105.html

Thanks,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
