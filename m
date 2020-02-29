Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC28E17484C
	for <lists+kexec@lfdr.de>; Sat, 29 Feb 2020 18:07:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JHgMfsBpnnRVDpRKxgW/xXIxD+eNTXmx5ujvl8jQdDk=; b=I/SjR6aWgrlBau
	IVzVmIH0AZe4/67bCi150kYmowZHQOYZoOtH6ZnBy2lW7XLjQ4P1MTpPjKFMwOeW8fvC7u7BLha3P
	kDztiaDVs7m/fHNE3NjrWdfUoqEuogeU6DHPEhEwRq4UYge0ITfw1nvKmOYq7cM21m4yv6LYzr4DK
	dcpLhA2bCD7hwQ98rSESQhtYjxpQsL0+dJGK1Icjl1fg5cE6F7y7rY6gBOExktqD9pOxs+GTFjWDx
	GgycbpDEZw9C8Fs0wFpthC2s87BvqHQ5nRVNh46dZGP3EKvxrvTggA4YzNenvLI/Irpj+kep4499+
	u9PVCF3mEyODBCh5w4gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j85aE-0001x3-9b; Sat, 29 Feb 2020 17:07:22 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j85a7-0001wL-9s
 for kexec@lists.infradead.org; Sat, 29 Feb 2020 17:07:17 +0000
Received: from mail-wr1-f70.google.com ([209.85.221.70])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <gpiccoli@canonical.com>) id 1j85a3-00013G-2Z
 for kexec@lists.infradead.org; Sat, 29 Feb 2020 17:07:11 +0000
Received: by mail-wr1-f70.google.com with SMTP id l1so3130355wrt.4
 for <kexec@lists.infradead.org>; Sat, 29 Feb 2020 09:07:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:openpgp:autocrypt:subject:message-id
 :date:user-agent:mime-version:content-language
 :content-transfer-encoding;
 bh=LF1HmXsAcAD/fz5YiIUzlp9qJgerBFgzN8v0/ggBj6Q=;
 b=ffTZjnVUfFGTFfId2we7v2ClhwarTYFJlrzY4KTOksGoi1sM2WtUCNFbZQaiHJS/04
 O9Nb8D1pNAn1W2k2YFlPNzgCld/YJ8E5t2402qE5GX9LjS2pbUm7dcQPr/A1gYtYlySC
 CuFlg/TJnlNJEQgIJ78xh6No/2qWhf1Ink6UmApXq//YsV4Uezxp3wLEZi804WVdS7jF
 /GLFPmVznqJEfp0ldcnvR8zdBf2QAHLVLKI7SgN0Go0itBGy8W6Mr/st5S5PRvJXj7rk
 xfcbFVMYs9qAaThKx4Rqn8Gf1jpmR1brI+pnrkIU4IxxjUKUTnUUM7b3GiU5S+6VlqM/
 /6hA==
X-Gm-Message-State: APjAAAXJAKKIE11GYXTCSetS56zAN7RjwowS5SbXmIOLTBIdZOIjOHP+
 9GlRT1KvTOQV9hoqewRxPe3iIMj40geioigoQ2o/6wpo5/NTXv4MtQP9KyXVDBIvagFmF1QiCWV
 nMtwClfpRZe8f2YVh1WEJp5kXGYhMVofIdtx2Hg==
X-Received: by 2002:adf:fcc4:: with SMTP id f4mr11938812wrs.247.1582996030146; 
 Sat, 29 Feb 2020 09:07:10 -0800 (PST)
X-Google-Smtp-Source: APXvYqyXJeHmzIYRiXhjVCylO+3Ix9NfN52/VaKNq3fea1Rp7VTFJ6NWF1uyL7Ve2V5quCng5GcIfQ==
X-Received: by 2002:adf:fcc4:: with SMTP id f4mr11938793wrs.247.1582996029824; 
 Sat, 29 Feb 2020 09:07:09 -0800 (PST)
Received: from [192.168.1.75] (201-95-15-27.dsl.telesp.net.br. [201.95.15.27])
 by smtp.gmail.com with ESMTPSA id
 y12sm18156944wrw.88.2020.02.29.09.07.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Feb 2020 09:07:09 -0800 (PST)
To: bhsharma@redhat.com, dyoung@redhat.com
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
Subject: About kexec issues in AWS nitro instances (RH bz 1758323)
Message-ID: <cb237c2f-94ea-dbd8-8d6f-54911baefc45@canonical.com>
Date: Sat, 29 Feb 2020 14:07:03 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_090715_477275_A511A681 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: gshan@redhat.com, bhe@redhat.com, gpiccoli@canonical.com,
 kexec@lists.infradead.org, vgoyal@redhat.com,
 Gavin Guo <gavin.guo@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Bhupesh and Dave (and everybody CC'ed here), I'm Guilherme Piccoli
and I'm working in the same issue observed in RH bugzilla 1758323 [0] -
or at least, it seems to be the the same heh

The reported issue in my case was that the 2nd kexec fails on Nitro
instanced, and indeed it's reproducible. More than this, it shows as an
initrd corruption. I've found 2 workarounds, using the "new" kexec
syscall (by doing kexec -s -l) and keep the initrd memory "un-freed",
using the kernel parameter "retain_initrd".

I've noticed that your interesting investigation in the BZ led to
SWIOTLB as a potential culprit, but trying with "swiotlb=noforce" or
even "iommu=off" didn't help me.
Also, worth notice a weird behavior: seems Amazon Linux 2 (based on
kernel 4.14) sometimes works, or better saying, in some instances it
works. I have 2x t3.large instances, in one of them I can make the
Amazon Linux works (and to isolate potential out-of-tree patches, I've
used Amazon Linux 2 config file and built a mainline 4.14, which also
works in that particular instance).

The reason for this email is to ask if you managed to figure the issue
root-cause, or have some leads. I continue the debug here, but it's a
bit difficult without access to AWS hypervisor (and it seems like a
hypervisor issue for me). The fact that preserving the initrd memory
prevents the problem seems to indicate that after freeing such
high-address memory, the hypervisor somewhat manages to use that
regardless if some other code is using that...ending up corrupting the
initrd.

I've also looped the kexec list in order to grow the audience, maybe
somebody already faced that kind of issues and have some ideas.
A collaboration in this debug would be greatly appreciate by me, it's a
quite interesting issue and I'm looking forward to understand what's
going on.

Thanks in advance,


Guilherme


[0]https://bugzilla.redhat.com/show_bug.cgi?id=1758323

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
