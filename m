Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9731418D31E
	for <lists+kexec@lfdr.de>; Fri, 20 Mar 2020 16:40:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=96Vc5sjyUIUO4Finpw5/w3Sngi7KIMv99Hmq6lv+hfA=; b=U66ykFkmBW5Jzd
	0HCU1UfTkTivW15OXsWXhaFRYtDQG0mbCYjd4FKdVTOgQFyC4WtJwlQFoaanmLAnvc9fGIY2dpzf2
	Kv2ckBjL1q0inUn6SgYyl/WK1CvDuNkyQ+yY4eidmz1ALDL6kx3vLoyH7yeljGBE/Bvu1ltOz4YGd
	pLAGYlxH/iceXW0vH47Yd8GyfPPz6Z1bYlb+1/e58TB0Hz4TwTmmPUPpWbwWVU3S7saLDMeVAEDvO
	fXDhkgZkqXo4JAO9PYFeNfyGym8RxpI42CT0/LmAbNIxNdEqSAspnJPaU5bG5aOFexXHQX9j8hhvp
	unSVTHhZeFlrb+FlsXiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFJl7-00088X-Ff; Fri, 20 Mar 2020 15:40:29 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFJl3-00087d-LD
 for kexec@lists.infradead.org; Fri, 20 Mar 2020 15:40:27 +0000
Received: from mail-qt1-f199.google.com ([209.85.160.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <gpiccoli@canonical.com>) id 1jFJkz-0006p6-6b
 for kexec@lists.infradead.org; Fri, 20 Mar 2020 15:40:21 +0000
Received: by mail-qt1-f199.google.com with SMTP id x10so346320qts.14
 for <kexec@lists.infradead.org>; Fri, 20 Mar 2020 08:40:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=2c8cPvFx8MeP1piMzJ5RlFL1wwdGOfMSLmsyuVaW3Ho=;
 b=aFB65VJdbTvFEHwaP1jZpYgxiDHShzVagktVaI07/biVA6IZDkmiV/SpnfbpHMlEef
 Ol5J9AIGajjgOAUtSHizLry2EmOan5BYoe5Vl7nktB8GGPDvuHfreUenCix3xYfiLm1I
 Ux99jEOKTviYmajTmWkiGojLTr8fPvTsMo+ddVm46a3YBS/WA2Fy996dvaRosD6HS6Vi
 SU8M3kP+5FOza9Et4EC4bqiBNkTo4ZUvtM1Vv+ILAbERaNuhwAHchtKwlGAVeiNMx84v
 BGjNXgfkpWzMi1RSEG2WzlwEwrBVipaNLJseDp7IwotwdfM19EQhEClvImDVRrCiN3KI
 F07w==
X-Gm-Message-State: ANhLgQ15e7Dv/1OUxf/H5fQMfcL/Y6az6nk5sord93GCt9TO69pxDtyV
 wPEOlpnDesvek5GOArXfxEjq4FVmWWGnnrLyzxqqCyuxBlBE7Zl1TkzJPsSC803GduOkMCZ/nPQ
 Dw4Uz3n28KarvWZHU9z16N5H7QpxgRPRlPSSpsQ==
X-Received: by 2002:ac8:6f64:: with SMTP id u4mr9022910qtv.301.1584718817854; 
 Fri, 20 Mar 2020 08:40:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu2xCtWLtuTBeZwF46njNXxFrQjvzPh7fUduXUAxzjV/LiC+p0xfN+Cyn2f/MVTg0f5HkDeNA==
X-Received: by 2002:ac8:6f64:: with SMTP id u4mr9022879qtv.301.1584718817552; 
 Fri, 20 Mar 2020 08:40:17 -0700 (PDT)
Received: from [192.168.1.75] (189-47-87-73.dsl.telesp.net.br. [189.47.87.73])
 by smtp.gmail.com with ESMTPSA id
 r207sm4332012qke.136.2020.03.20.08.40.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Mar 2020 08:40:16 -0700 (PDT)
Subject: Re: About kexec issues in AWS nitro instances (RH bz 1758323)
From: "Guilherme G. Piccoli" <gpiccoli@canonical.com>
To: kexec mailing list <kexec@lists.infradead.org>,
 Bhupesh Sharma <bhsharma@redhat.com>
References: <cb237c2f-94ea-dbd8-8d6f-54911baefc45@canonical.com>
 <CACi5LpMtVHOLDojyMwz+3GrL49TRiSTAkm+D_xeD8QR1+msR=A@mail.gmail.com>
 <20200302080935.GA8969@dhcp-128-65.nay.redhat.com>
 <CACi5LpNJVw_POqvmUD2fHWJkS=3bK4PzWCD_9Hs_K90aQ4gczw@mail.gmail.com>
 <7d76b7cf-8606-5fa6-e166-5de785bd3012@canonical.com>
 <5f338241-8842-18d0-21df-cfeb0826d725@canonical.com>
 <bec06a39472b31e0bb343dfb762ae827fb305f66.camel@infradead.org>
 <e21d3f34-afc3-8f3b-9f40-574aa5c00495@canonical.com>
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
Message-ID: <2080da6e-770b-a69e-59b2-0f23813188db@canonical.com>
Date: Fri, 20 Mar 2020 12:40:13 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <e21d3f34-afc3-8f3b-9f40-574aa5c00495@canonical.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_084025_832294_E91DAAB7 
X-CRM114-Status: GOOD (  14.84  )
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
 David Woodhouse <dwmw2@infradead.org>, Gavin Guo <gavin.guo@canonical.com>,
 pedro.principeza@canonical.com, Dave Young <dyoung@redhat.com>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Well, it seems we have some good results with this patch [0] - the idea
behind the issue is that ena network driver has no PCI shutdown()
handler, which would be called to gently quiesce the device before the
kexec. The PCI stack in this case clears the master bit of the device
configuration space, effectively stopping all the DMA transactions. But
then, when the system boots the kexec'ed kernel, the network device
firmware may send a memory write regarding that stopped DMA transaction
(that is now invalid), corrupting some random kernel memory area.

I've ran 1000 kexecs tests with mainline (5.6-rc5) + this patch and no
failures were observed. Also, I'm running a test with Ubuntu 5.3 kernel
+ this patch and achieved > 450 runs now, with no failures (test is
ongoing).

I've tried to dump the initrd content (could be useful now to identify
the corruption signature, maybe matching some ena admin queue periodic
task) but I had trouble collecting the dmesg in case of failure. It gets
huge and requires a big ramoops allocation, which unfortunately prevents
the issue from happening (I guess the corruption ends-up happening in
the ramoops reserved area, not initrd area anymore).

Bhupesh, I've noticed that suddenly the Red Hat bugzilla got private -
is it okay to add me in CC list so I can see it?
Thanks for all the collaboration, I hope the issue was figured and solved!
Cheers,

Guilherme

[0] lore.kernel.org/netdev/20200320125534.28966-1-gpiccoli@canonical.com

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
