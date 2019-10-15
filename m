Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E473D7F5A
	for <lists+kexec@lfdr.de>; Tue, 15 Oct 2019 20:47:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IvrE01XVXoRIEyhy2XBf0yIX92hnj0pyuNYik64M8Ns=; b=Ghlj17rEpc9mQY
	XqIwq9xWqfyDR410JFWkRMEEUJOJ6JifT1mO3aw42vADp9JP+QuBhnAdqesUdP2nEh1cZVzvJeizE
	nt9/50L5M5EJCKH/YMIPLx7LDOiksv/xVwdAz4ac7Vvcc/FiUgonlBtXHidrIEXSlpc2RRyIcOxX4
	cHM8jvfaCyTaCe3RYQa/HbpkuMp0NTvxGrjAoBtSMIYs67hz6V+NNh2eFpIkWNefxAb+OmEb/eHyj
	tLsRQ8QeXFzFymrVjK7tNc9Sm2PcJxDGRiKhWJjQMVl3nl8Ix/UeI5wfqD+KrWAua4Z3lig8JIUUd
	7bLpBt0FWy7arXAHWORg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKRr4-0005Q9-Tr; Tue, 15 Oct 2019 18:47:34 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKRr1-0005PG-IF
 for kexec@lists.infradead.org; Tue, 15 Oct 2019 18:47:33 +0000
Received: by mail-ed1-x544.google.com with SMTP id c4so19023149edl.0
 for <kexec@lists.infradead.org>; Tue, 15 Oct 2019 11:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Pfvg+FTtrisg7B2S8oM0CWu26E9e8Sf1gXQfTf34924=;
 b=DWS32JsmOlg5VgikKYtVcPLKwn3b9Q4/V0KNahVXNAMx9O+6dQVwKcEF+Lndyz/cUP
 T8qVbCzzI3QD4vSRPTkIfkRWU0VtopbR5bmjoK4EhIeo9z9nHu8Y2+S4WUCHESEGLueY
 kZnycdUuYFT92OAHv90YZyjrMLD64mqJ+UjTBIxOfJG0g2TXBBHtiI1uNutceqDunni7
 83OPAVIphlgUTv6vOQ4XNmhn+EIzhha33eHjbIWmFxMuCd9Q36GIFYhc2Df2CVCFka+j
 tj76RJeVAtrK9OBMXa9y9PmMSeCS5tBi6bId/9RNBVnNplRBX3EyVTbe+cvZFAJ/BjE7
 ZpZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Pfvg+FTtrisg7B2S8oM0CWu26E9e8Sf1gXQfTf34924=;
 b=MrKUh2eCyqjXLW5t6cpX0O1h+IXhhp3mlvVgD3CfG0wvlTe3D9D7y8wOxe5ocWR74Q
 DpkwH/9pG5T4MJrSuJ6mR/Runf2Xv0aEoTil8UWb6eweH5/KTCm1npyMplKc70ufNcbs
 xNIBdFlYFB+lnoxz8oCsLMv/vUXjx8b4HjyGzhPS5/0Nj9YdyiDvzluv6qAriwxoG5qW
 MBainw89nb9eP52fZtZdBJR2agP5a/mLpkQP97eVkLDw4LyIvx4XzzeZBVxaDoexkSkC
 stkfibStK0tHpHJqX1UJTThXHZv/XsmZ+BzChlV8wx7tPdrQEIszapYqLI+Ebg36vwte
 gM2Q==
X-Gm-Message-State: APjAAAXaO405zQn0qdj4TPPUSIrp8szsUr6QMub0grxaPK0M7CcPxsv/
 K7uNqiXX2UYITOAI9WSDjTfaJeDxXJT6jEJm3zFdCw==
X-Google-Smtp-Source: APXvYqwYBNXfzf8UL1/6WH3Lzo2PnVa4eH7g/2iw18YIH4cRXry4dS5x/CxY7akvONtDlQt0LutAiqvmrk0BHlBahoo=
X-Received: by 2002:a05:6402:2022:: with SMTP id
 ay2mr34963109edb.219.1571165249255; 
 Tue, 15 Oct 2019 11:47:29 -0700 (PDT)
MIME-Version: 1.0
References: <20191011003600.22090-1-prsriva@linux.microsoft.com>
 <87d92514-e5e4-a79f-467f-f24a4ed279b6@arm.com>
 <b35b239c-990c-0d5b-0298-8f9e35064e2b@linux.microsoft.com>
 <0053eb68-0905-4679-c97a-00c5cb6f1abb@arm.com>
In-Reply-To: <0053eb68-0905-4679-c97a-00c5cb6f1abb@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 15 Oct 2019 14:47:18 -0400
Message-ID: <CA+CK2bBVcE91YbJx1f_BkNqbD03wGLNtyane7PjCnEu8i_cH2Q@mail.gmail.com>
Subject: Re: [PATCH V4 0/2] Add support for arm64 to carry ima measurement
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_114731_758956_E587F267 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, jean-philippe@linaro.org,
 arnd@arndb.de, Masahiro Yamada <yamada.masahiro@socionext.com>,
 sboyd@kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, zohar@linux.ibm.com,
 prsriva <prsriva@linux.microsoft.com>, takahiro.akashi@linaro.org, duwe@lst.de,
 bauerman@linux.ibm.com, allison@lohutok.net, linux-integrity@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> I think the UEFI persistent-memory-reservations thing is a better fit for this [0][1].

Hi James,

Thank you for your thought. As I understand you propose the to use the
existing method as such:
1. Use the existing kexec ABI to pass reservation from kernel to
kernel using EFI the same as is done for GICv3 tables.
2. Allow this memory to be reservable only during first Linux boot via
EFI memory reserve
3. Allow to have this memory pre-reserved by firmware or to be
embedded into device tree.

A question I have is how to tell that a reserved region is reserved
for IMA use. With GICv3 it is done by reading the registers, finding
the interrupt tables memory, and check that the memory ranges are
indeed pre-reserved.

Is there a way to name memory with the current ABI that you think is acceptable?

Thank you,
Pasha

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
