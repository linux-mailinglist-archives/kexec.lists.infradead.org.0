Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A7E18F72A
	for <lists+kexec@lfdr.de>; Mon, 23 Mar 2020 15:47:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+4vfpw9P1xk5iADh0eqzj1SM3YME2mXcADNea1p86s=; b=rd+XlgDYydSyaV
	y1Tao1SsWSorfMGlqPEfpZhZQoX5sX4w9wZ8ruXqIr9SSBnF4htTEwXZzlR/uAxRhC/M29gJZ+TlI
	EeToop5wrKI0+ijbHriOdLfmcOQQvainfrnTlP5u6A68B3hr3472S0INTy9fNmiUEXc9YNvgR/ac6
	MdMseVMYaAer8lYNfAJi9KEHKluHoLuse9s+wac7YgrM9dmXblRtDMhD73GsInpiqmW1D2wScdTgz
	QH90fx0BTKQbnqf1qlMepmo6AvvqZmRGPL+bwvsnfKw+BCAHQBnQwxArabYtLQOk04CWi/e0PDC+O
	V/nqU6h632xaoDosFbgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGOM2-00012b-4e; Mon, 23 Mar 2020 14:47:02 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGOLy-00011C-Cc
 for kexec@lists.infradead.org; Mon, 23 Mar 2020 14:46:59 +0000
Received: from mail-qt1-f200.google.com ([209.85.160.200])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <gpiccoli@canonical.com>) id 1jGOLs-0000V8-6k
 for kexec@lists.infradead.org; Mon, 23 Mar 2020 14:46:52 +0000
Received: by mail-qt1-f200.google.com with SMTP id o10so13185249qtk.22
 for <kexec@lists.infradead.org>; Mon, 23 Mar 2020 07:46:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=tcTwGXTpFSN4zLwSK/NM+QcF5XlvwKUs5msMyO3rUsY=;
 b=OF8yr+UQaMZ/PJHV1bOKFoJxZi/bHcrHaOa2SyHy164lPy38sTK8QPH8m8vYDtVK4m
 slQG0T79M9eQoWrBBxDPq7/xdUg1ajtaFswyFwQ8XuGHz8UY7PC29cobnSq/lre5X5Rh
 obyxmVT8wyuNYbpQe2SACG/l2rCy7+VnHLJA9xxu8HqDyByHJNQhMjiwdjrJNUQf35mH
 s4/D8klx7kTOnqhBfL/KLgdoykfgiJba8Fws8i0E2/ImMbVgF0phXA0areL7a7Iz1mdf
 jPSNM3jFPpMOFrcYVZ/FpeLHDSMOs1xd09ZidDqZO9AjT6w5TMLuP1OLJuag9LDQ93/2
 9BrA==
X-Gm-Message-State: ANhLgQ1eY+SarcKU//7BJTLp9Z/hAOqh+elomUXEPulUjOPGd2gj33w8
 7dYBKf+yLm/3tdjnmLg2cua/htDHQ3XFKWtlsBjzSmmyz7vyaScaXFUdO/5p4gX4jpRNIrUBBia
 BGBnwgg6qxnSotGZiQQFafV9vY5kA5GdwZi3QYA==
X-Received: by 2002:aed:2822:: with SMTP id r31mr11984380qtd.87.1584974811252; 
 Mon, 23 Mar 2020 07:46:51 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsI3+CVfbfwFlQtVjVmWVlQCYAW5EuHSKRtqclPjvq7g4IyV/60+BPvbtJ65ZHd7whgut05DQ==
X-Received: by 2002:aed:2822:: with SMTP id r31mr11984352qtd.87.1584974810946; 
 Mon, 23 Mar 2020 07:46:50 -0700 (PDT)
Received: from [192.168.1.75] (189-47-87-73.dsl.telesp.net.br. [189.47.87.73])
 by smtp.gmail.com with ESMTPSA id
 m1sm12585171qtm.22.2020.03.23.07.46.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Mar 2020 07:46:50 -0700 (PDT)
Subject: Re: About kexec issues in AWS nitro instances (RH bz 1758323)
To: Bhupesh Sharma <bhsharma@redhat.com>
References: <cb237c2f-94ea-dbd8-8d6f-54911baefc45@canonical.com>
 <CACi5LpMtVHOLDojyMwz+3GrL49TRiSTAkm+D_xeD8QR1+msR=A@mail.gmail.com>
 <20200302080935.GA8969@dhcp-128-65.nay.redhat.com>
 <CACi5LpNJVw_POqvmUD2fHWJkS=3bK4PzWCD_9Hs_K90aQ4gczw@mail.gmail.com>
 <7d76b7cf-8606-5fa6-e166-5de785bd3012@canonical.com>
 <5f338241-8842-18d0-21df-cfeb0826d725@canonical.com>
 <bec06a39472b31e0bb343dfb762ae827fb305f66.camel@infradead.org>
 <e21d3f34-afc3-8f3b-9f40-574aa5c00495@canonical.com>
 <2080da6e-770b-a69e-59b2-0f23813188db@canonical.com>
 <CACi5LpMkEnerJcL6r+-0__6OM8Dq_uFhtobFYJTEif6NX_guFg@mail.gmail.com>
From: "Guilherme G. Piccoli" <gpiccoli@canonical.com>
Openpgp: preference=signencrypt
Autocrypt: addr=gpiccoli@canonical.com; prefer-encrypt=mutual; keydata=
 mQENBFpVBxcBCADPNKmu2iNKLepiv8+Ssx7+fVR8lrL7cvakMNFPXsXk+f0Bgq9NazNKWJIn
 Qxpa1iEWTZcLS8ikjatHMECJJqWlt2YcjU5MGbH1mZh+bT3RxrJRhxONz5e5YILyNp7jX+Vh
 30rhj3J0vdrlIhPS8/bAt5tvTb3ceWEic9mWZMsosPavsKVcLIO6iZFlzXVu2WJ9cov8eQM/
 irIgzvmFEcRyiQ4K+XUhuA0ccGwgvoJv4/GWVPJFHfMX9+dat0Ev8HQEbN/mko/bUS4Wprdv
 7HR5tP9efSLucnsVzay0O6niZ61e5c97oUa9bdqHyApkCnGgKCpg7OZqLMM9Y3EcdMIJABEB
 AAG0LUd1aWxoZXJtZSBHLiBQaWNjb2xpIDxncGljY29saUBjYW5vbmljYWwuY29tPokBNwQT
 AQgAIQUCWmClvQIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRDOR5EF9K/7Gza3B/9d
 5yczvEwvlh6ksYq+juyuElLvNwMFuyMPsvMfP38UslU8S3lf+ETukN1S8XVdeq9yscwtsRW/
 4YoUwHinJGRovqy8gFlm3SAtjfdqysgJqUJwBmOtcsHkmvFXJmPPGVoH9rMCUr9s6VDPox8f
 q2W5M7XE9YpsfchS/0fMn+DenhQpV3W6pbLtuDvH/81GKrhxO8whSEkByZbbc+mqRhUSTdN3
 iMpRL0sULKPVYbVMbQEAnfJJ1LDkPqlTikAgt3peP7AaSpGs1e3pFzSEEW1VD2jIUmmDku0D
 LmTHRl4t9KpbU/H2/OPZkrm7809QovJGRAxjLLPcYOAP7DUeltveuQENBFpVBxcBCADbxD6J
 aNw/KgiSsbx5Sv8nNqO1ObTjhDR1wJw+02Bar9DGuFvx5/qs3ArSZkl8qX0X9Vhptk8rYnkn
 pfcrtPBYLoux8zmrGPA5vRgK2ItvSc0WN31YR/6nqnMfeC4CumFa/yLl26uzHJa5RYYQ47jg
 kZPehpc7IqEQ5IKy6cCKjgAkuvM1rDP1kWQ9noVhTUFr2SYVTT/WBHqUWorjhu57/OREo+Tl
 nxI1KrnmW0DbF52tYoHLt85dK10HQrV35OEFXuz0QPSNrYJT0CZHpUprkUxrupDgkM+2F5LI
 bIcaIQ4uDMWRyHpDbczQtmTke0x41AeIND3GUc+PQ4hWGp9XABEBAAGJAR8EGAEIAAkFAlpV
 BxcCGwwACgkQzkeRBfSv+xv1wwgAj39/45O3eHN5pK0XMyiRF4ihH9p1+8JVfBoSQw7AJ6oU
 1Hoa+sZnlag/l2GTjC8dfEGNoZd3aRxqfkTrpu2TcfT6jIAsxGjnu+fUCoRNZzmjvRziw3T8
 egSPz+GbNXrTXB8g/nc9mqHPPprOiVHDSK8aGoBqkQAPZDjUtRwVx112wtaQwArT2+bDbb/Y
 Yh6gTrYoRYHo6FuQl5YsHop/fmTahpTx11IMjuh6IJQ+lvdpdfYJ6hmAZ9kiVszDF6pGFVkY
 kHWtnE2Aa5qkxnA2HoFpqFifNWn5TyvJFpyqwVhVI8XYtXyVHub/WbXLWQwSJA4OHmqU8gDl
 X18zwLgdiQ==
Message-ID: <2e1ed40e-7aaa-239f-8b1a-23dd7fa100f5@canonical.com>
Date: Mon, 23 Mar 2020 11:46:46 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CACi5LpMkEnerJcL6r+-0__6OM8Dq_uFhtobFYJTEif6NX_guFg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_074658_567382_F02A2452 
X-CRM114-Status: GOOD (  22.56  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Guowen Shan <gshan@redhat.com>, Baoquan He <bhe@redhat.com>,
 Dave Young <dyoung@redhat.com>, kexec mailing list <kexec@lists.infradead.org>,
 Gavin Guo <gavin.guo@canonical.com>, pedro.principeza@canonical.com,
 David Woodhouse <dwmw2@infradead.org>, Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 22/03/2020 18:16, Bhupesh Sharma wrote:
> Hello Guilherme,
> 
> On Fri, Mar 20, 2020 at 9:10 PM Guilherme G. Piccoli
> <gpiccoli@canonical.com> wrote:
> 
> Thanks for writing again. I was caught up in trying several other
> suggestions/code-snippets to further debug this.
> I tried several combinations - turning iommu off, turning off swiotlb
> in the kexec kernel and testing various combinations with
> retain_initrd added to the kexec kernel's bootargs.
> 
> But nothing seems to fix the nested repetitive kexec reboot attempts
> on the aws t3 machines I have. It just becomes better on few instances
> (i.e. the kexec reboots would survive around 10 nested repetitive
> attempts), while on the other(s) the failure can be seen quite
> frequently (approx ~3 kexec reboot attempts).

Hi Bhupesh, thanks for the tests! Indeed, this problem is difficult to
prevent with those parameters, and it's quite interesting to see how it
may vary among instances.


> [...] 
> This is a really good debug and resulting patch.
> I ran almost ~60 kexec repetitive attempts last night and also
> repeated the same today morning and
> the issue seems to get fixed for me with upstream kernel 5.6.0-rc6+
> with this patch.
> 
> I am leaving a test running with RHEL kernel + this patch overnight
> and will have more updates to share by tomorrow morning.

Thanks a lot =)
I couldn't fail to give due credit to my friend Gavin Shan for the great
suggestion that resulted in the patch! Let me know your results with the
patch Bhupesh, and your Tested-by on it is much appreciated.


> 
>> Bhupesh, I've noticed that suddenly the Red Hat bugzilla got private -
> 
> Oops. I will check.
> 
>> is it okay to add me in CC list so I can see it?
> 
> Sure. I tried doing it, but seems Bugzilla is not happy as it keeps
> complaining that you are not registered on BZ,
> I will try to find out internally how to get around the issue.
>

Great! If you need me to sign-up in Bugzilla, I can do it. Just let me
know the steps and I'd be glad in doing that.


>> Thanks for all the collaboration, I hope the issue was figured and solved!
> 
> Sure. Thanks a lot for your inputs and trying the suggestions I posted
> on the Bugzilla ticket.
> I will soon share an update with RHEL/Fedora kernel kexec tests with
> this patch applied and also reply with a Tested-by for the upstream
> patch in the relevant thread.
> 
> Thanks,
> Bhupesh
> 

Thank you, I appreciate the tests and collaboration =)
Cheers,


Guilherme

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
