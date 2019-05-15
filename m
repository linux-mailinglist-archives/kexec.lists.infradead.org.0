Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 357261E7D5
	for <lists+kexec@lfdr.de>; Wed, 15 May 2019 07:16:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kkM4SPwJ8CF+urprfv12PyNY3yAS4VDe2AOYguPMn9s=; b=mcTErx8QgSLheDS7OBtiiSctp
	i6Wm6BKtQCRST60cmePFnZZVhs+YefkItQJulpTDA5nLJLRqkTpPZonu/hKCfN7T/zbGnGoxgbQuS
	g4JTH04kEtfwfmeWqjdNekM2OlSSbA7i7QGh2ksabuqAJh7taOl5n4AglxAscm8a57IWtZLSXxJ8U
	g1UAKJxksRApOnmr8CRfXq7WfLNlcPEqGINYR8WA1aidmrv4N7EqGqHCjWERgs4aHqqrHBa3ne//f
	MTxpEgM+tJeYg8lzFyUdU/Q/kjV8fTKRF1nvWl4LrhDrUgkiH/GpaFb3HRb3v7WU5NeIucJ+dA/Lv
	VhHIMzX3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQmHD-0002bj-AX; Wed, 15 May 2019 05:16:27 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQmH4-0002Tl-B4
 for kexec@lists.infradead.org; Wed, 15 May 2019 05:16:19 +0000
Received: by mail-pf1-f194.google.com with SMTP id g9so708904pfo.11
 for <kexec@lists.infradead.org>; Tue, 14 May 2019 22:16:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CaPoBfwvfHYoUlv6FfiwdTonkmXQ3Vz27zElYB+X6NY=;
 b=dbYErqde9uhsYSmWR0UDpj2h5ATFKi77zbAX0rwSPxp5RHA4v+ixjMewdE2ziXPZPF
 jgmAR59pmlk0QP2t/371k1fCmzpQIzE2OSOUJacKWYiFoeax1fDFz9lboV+olV8nbn9u
 jTHaLN09tjRshqlPxfpGXGmi+fEKqXIioZhlYPUi5/wbhfammoc6gR1O+p8QFFjheC1x
 IgD/WmR/7o1yO3s5bugCrobXqESSq/ggBuGRzQaVOz9+JTJMZhYM/Jr+Pe8ykKDzTLEr
 f9p3KU9Ln5chPw5Vgc36mSxy7XBurPXwWqxQ+NbY+9KO5L6fnUc127vZz85idDTJ37Bf
 0oXA==
X-Gm-Message-State: APjAAAXLXMU+l9quHeY8ZacxPyQjUapkG41ow643PoKfVRPUdQu7kULY
 x4+Sv97KMjl/MAOGT3GFIOG6Sg==
X-Google-Smtp-Source: APXvYqy7c4aMXqBtV8RsQz37cPVhnwGAI6b96xSjxoKpUb2R5qSgsCxWAkkxEB8uTYJPawwWOM0xxw==
X-Received: by 2002:a63:d4c:: with SMTP id 12mr28791554pgn.30.1557897374744;
 Tue, 14 May 2019 22:16:14 -0700 (PDT)
Received: from localhost.localdomain ([106.215.121.117])
 by smtp.gmail.com with ESMTPSA id 135sm1321765pfb.97.2019.05.14.22.16.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 22:16:13 -0700 (PDT)
Subject: Re: [PATCH 4/4] kdump: update Documentation about crashkernel on arm64
To: Chen Zhou <chenzhou10@huawei.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, akpm@linux-foundation.org, ard.biesheuvel@linaro.org,
 rppt@linux.ibm.com, tglx@linutronix.de, mingo@redhat.com, bp@alien8.de,
 ebiederm@xmission.com
References: <20190507035058.63992-1-chenzhou10@huawei.com>
 <20190507035058.63992-5-chenzhou10@huawei.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <de5b827f-5db2-2280-b848-c5c887b9bb58@redhat.com>
Date: Wed, 15 May 2019 10:46:05 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190507035058.63992-5-chenzhou10@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_221618_384322_FAA46A58 
X-CRM114-Status: GOOD (  21.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: wangkefeng.wang@huawei.com, takahiro.akashi@linaro.org,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, horms@verge.net.au,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 05/07/2019 09:20 AM, Chen Zhou wrote:
> Now we support crashkernel=X,[high,low] on arm64, update the
> Documentation.
> 
> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
> ---
>   Documentation/admin-guide/kernel-parameters.txt | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index 268b10a..03a08aa 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -705,7 +705,7 @@
>   			memory region [offset, offset + size] for that kernel
>   			image. If '@offset' is omitted, then a suitable offset
>   			is selected automatically.
> -			[KNL, x86_64] select a region under 4G first, and
> +			[KNL, x86_64, arm64] select a region under 4G first, and
>   			fall back to reserve region above 4G when '@offset'
>   			hasn't been specified.
>   			See Documentation/kdump/kdump.txt for further details.
> @@ -718,14 +718,14 @@
>   			Documentation/kdump/kdump.txt for an example.
>   
>   	crashkernel=size[KMG],high
> -			[KNL, x86_64] range could be above 4G. Allow kernel
> +			[KNL, x86_64, arm64] range could be above 4G. Allow kernel
>   			to allocate physical memory region from top, so could
>   			be above 4G if system have more than 4G ram installed.
>   			Otherwise memory region will be allocated below 4G, if
>   			available.
>   			It will be ignored if crashkernel=X is specified.
>   	crashkernel=size[KMG],low
> -			[KNL, x86_64] range under 4G. When crashkernel=X,high
> +			[KNL, x86_64, arm64] range under 4G. When crashkernel=X,high
>   			is passed, kernel could allocate physical memory region
>   			above 4G, that cause second kernel crash on system
>   			that require some amount of low memory, e.g. swiotlb
> 

IMO, it is a good time to update 'Documentation/kdump/kdump.txt' with 
this patchset itself for both x86_64 and arm64, where we still specify 
only the old format for 'crashkernel' boot-argument:

Section: Boot into System Kernel
          =======================

On arm64, use "crashkernel=Y[@X]".  Note that the start address of
the kernel, X if explicitly specified, must be aligned to 2MiB (0x200000).
...

We can update this to add the new crashkernel=size[KMG],low or 
crashkernel=size[KMG],high format as well.

Thanks,
Bhupesh

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
