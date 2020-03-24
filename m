Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7D0191A73
	for <lists+kexec@lfdr.de>; Tue, 24 Mar 2020 21:04:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G3ITsq8a9qSPnaS+56QEduvde14giKjqPzNzmh+fNJE=; b=DCUMbY0mRDhe7iXJK2ddDtOin
	zRPHHdDrcnwvMGp3IDVfI404Azyhs3s2gM9LGBfYCvbF+EBfH5zzBZDZu6aYYtuF0ZiHxYU9tiM2a
	EBbjUbRvMEPMUSpru9yTHYnFzlz9RO48hLLuRss7xSgPb5wXzQzoaxnjDOq5OL1snBsDF+hra9Jex
	S6B+g3ZwQzy6DgRyX0eqnFOK0vLPx7jik/L4fKnC+q88kT3gUUF5fA5yp+fYzQHCdu1od9vam1boZ
	dPNEycX4nKfUlye6SJ9lxFZZZSLG7HZf8R4YjjfaK25/ITx4My0wmYE6Ptr/+oStNrzvzvSqdfr/0
	AnRBQcgZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGpn0-00065j-Iv; Tue, 24 Mar 2020 20:04:42 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGpmw-000654-Pv
 for kexec@lists.infradead.org; Tue, 24 Mar 2020 20:04:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585080275;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qkmq7er3eCoaZjtoomf3dK9L84sbORuAfwSguGA5Rok=;
 b=N4ktDJTLWXZx1gURYVvcCMKP9LXFcoO9j9wbQm42Mn5OuYc5lzsOXQwmmVPCv7Q7HJJX67
 cR1xn5UFH1LD/d6djBJRr47bKHblotksEeb75FsI2Zso3nFPuhyAxwySMt1HHdUeQlazD2
 LyDTLRjhrdxahYzbMH0sKcRM6AypsWY=
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com
 [209.85.210.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-394-Nk2Ci_tsNu2HllkUAYs27g-1; Tue, 24 Mar 2020 16:04:30 -0400
X-MC-Unique: Nk2Ci_tsNu2HllkUAYs27g-1
Received: by mail-pf1-f198.google.com with SMTP id t19so14926714pfq.21
 for <kexec@lists.infradead.org>; Tue, 24 Mar 2020 13:04:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qkmq7er3eCoaZjtoomf3dK9L84sbORuAfwSguGA5Rok=;
 b=UDxRN0VIJJMwIgCEhi/S76swdwjcCjDWg/6qrbi5pR4b8XxQ09apEuQaQzTex/ZYHa
 8WwycvNtE3W+UaGhU7SKd1LiejXCknzqRcoQPI1eF2RMQMgdXNPiGbiTCJgOuDe2193y
 Y78ZZ44NcGMHMhYokD8VQlQBz9ZDKE8kP4IBJSfeys8lLktOA9Pjmfr2g+LACEb4vhAC
 RSeam3L0+dCeYX9OxmuVT6J8Du7gg1QsJ2W2EoiuWJinaANk6KpGNoE/b0+E0hp5ZBbJ
 d67pawaVa1rurvdyWru6Y5aa7orxr4S9R5xIH0MNGzCVh9HxqFq/xiVeHxZbolr92zLI
 Iiiw==
X-Gm-Message-State: ANhLgQ05Quvv8wRRgOdePKJn7TNP+cKzMRA2LnA0nbmhgrmUhTk18Ed2
 wqRTlekCv9Gbl4b+xgWpZxr0tOcAHrXm29iIJU0BAAgcbyj/WY4ltbReEoWh+1EaImaIv2GOe85
 9hdQMogn2EeeMG/9raZwf
X-Received: by 2002:a17:902:26a:: with SMTP id
 97mr29382051plc.82.1585080269532; 
 Tue, 24 Mar 2020 13:04:29 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsyOGIjc60c4MgECptbLF0UNxAB30jAaEzMf0zT9RpdeoPb71CGh8sLyUb2Agt061ZVx6+xuA==
X-Received: by 2002:a17:902:26a:: with SMTP id
 97mr29382023plc.82.1585080269164; 
 Tue, 24 Mar 2020 13:04:29 -0700 (PDT)
Received: from localhost.localdomain ([122.177.157.194])
 by smtp.gmail.com with ESMTPSA id bx1sm3040427pjb.5.2020.03.24.13.04.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Mar 2020 13:04:28 -0700 (PDT)
Subject: Re: [PATCH] net: ena: Add PCI shutdown handler to allow safe kexec
To: "Guilherme G. Piccoli" <gpiccoli@canonical.com>, netanel@amazon.com,
 akiyano@amazon.com, netdev@vger.kernel.org
References: <20200320125534.28966-1-gpiccoli@canonical.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <e6101601-3fb1-7551-3027-1701bda0fa33@redhat.com>
Date: Wed, 25 Mar 2020 01:34:19 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20200320125534.28966-1-gpiccoli@canonical.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_130438_920490_1A7E3815 
X-CRM114-Status: GOOD (  35.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: gshan@redhat.com, zorik@amazon.com, bhsharma@redhat.com,
 kernel@gpiccoli.net, "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 saeedb@amazon.com, jay.vosburgh@canonical.com, pedro.principeza@canonical.com,
 gtzalik@amazon.com, gavin.guo@canonical.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Guilherme,

On 03/20/2020 06:25 PM, Guilherme G. Piccoli wrote:
> Currently ENA only provides the PCI remove() handler, used during rmmod
> for example. This is not called on shutdown/kexec path; we are potentially
> creating a failure scenario on kexec:
> 
> (a) Kexec is triggered, no shutdown() / remove() handler is called for ENA;
> instead pci_device_shutdown() clears the master bit of the PCI device,
> stopping all DMA transactions;
> 
> (b) Kexec reboot happens and the device gets enabled again, likely having
> its FW with that DMA transaction buffered; then it may trigger the (now
> invalid) memory operation in the new kernel, corrupting kernel memory area.
> 
> This patch aims to prevent this, by implementing a shutdown() handler
> quite similar to the remove() one - the difference being the handling
> of the netdev, which is unregistered on remove(), but following the
> convention observed in other drivers, it's only detached on shutdown().
> 
> This prevents an odd issue in AWS Nitro instances, in which after the 2nd
> kexec the next one will fail with an initrd corruption, caused by a wild
> DMA write to invalid kernel memory. The lspci output for the adapter
> present in my instance is:
> 
> 00:05.0 Ethernet controller [0200]: Amazon.com, Inc. Elastic Network
> Adapter (ENA) [1d0f:ec20]

Thanks for the patch.

> Suggested-by: Gavin Shan <gshan@redhat.com>
> Signed-off-by: Guilherme G. Piccoli <gpiccoli@canonical.com>
> ---
> 
> 
> The idea for this patch came from an informal conversation with my
> friend Gavin Shan, based on his past experience with similar issues.
> I'd like to thank him for the great suggestion!
> 
> As a test metric, I've performed 1000 kexecs with this patch, whereas
> without this one, the 3rd kexec failed with initrd corruption. Also,
> one test that I've done before writing the patch was just to rmmod
> the driver before the kexecs, and it worked fine too.
> 
> I suggest we add this patch in stable releases as well.
> Thanks in advance for reviews,

This patch fixes the repetitive kexec reboot issues that I was facing 
for some time on the aws nitro (t3) machines. Normally the kexec reboots 
would not runs more than ~ 3 to 5 times on the machine.

Now with this patch, I can runs hundreds of repetitive nested kexec 
reboots on the aws nitro machines without any failure.

So, I think this is a really good patch and should be applied to stable 
trees as well.

Please feel free to add:

Tested-and-Reviewed-by: Bhupesh Sharma <bhsharma@redhat.com>

Thanks,
Bhupesh

> Guilherme
> 
> 
>   drivers/net/ethernet/amazon/ena/ena_netdev.c | 51 ++++++++++++++++----
>   1 file changed, 41 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/amazon/ena/ena_netdev.c b/drivers/net/ethernet/amazon/ena/ena_netdev.c
> index 0b2fd96b93d7..7a5c01ff2ee8 100644
> --- a/drivers/net/ethernet/amazon/ena/ena_netdev.c
> +++ b/drivers/net/ethernet/amazon/ena/ena_netdev.c
> @@ -4325,13 +4325,15 @@ static int ena_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   
>   /*****************************************************************************/
>   
> -/* ena_remove - Device Removal Routine
> +/* __ena_shutoff - Helper used in both PCI remove/shutdown routines
>    * @pdev: PCI device information struct
> + * @shutdown: Is it a shutdown operation? If false, means it is a removal
>    *
> - * ena_remove is called by the PCI subsystem to alert the driver
> - * that it should release a PCI device.
> + * __ena_shutoff is a helper routine that does the real work on shutdown and
> + * removal paths; the difference between those paths is with regards to whether
> + * dettach or unregister the netdevice.
>    */
> -static void ena_remove(struct pci_dev *pdev)
> +static void __ena_shutoff(struct pci_dev *pdev, bool shutdown)
>   {
>   	struct ena_adapter *adapter = pci_get_drvdata(pdev);
>   	struct ena_com_dev *ena_dev;
> @@ -4350,13 +4352,17 @@ static void ena_remove(struct pci_dev *pdev)
>   
>   	cancel_work_sync(&adapter->reset_task);
>   
> -	rtnl_lock();
> +	rtnl_lock(); /* lock released inside the below if-else block */
>   	ena_destroy_device(adapter, true);
> -	rtnl_unlock();
> -
> -	unregister_netdev(netdev);
> -
> -	free_netdev(netdev);
> +	if (shutdown) {
> +		netif_device_detach(netdev);
> +		dev_close(netdev);
> +		rtnl_unlock();
> +	} else {
> +		rtnl_unlock();
> +		unregister_netdev(netdev);
> +		free_netdev(netdev);
> +	}
>   
>   	ena_com_rss_destroy(ena_dev);
>   
> @@ -4371,6 +4377,30 @@ static void ena_remove(struct pci_dev *pdev)
>   	vfree(ena_dev);
>   }
>   
> +/* ena_remove - Device Removal Routine
> + * @pdev: PCI device information struct
> + *
> + * ena_remove is called by the PCI subsystem to alert the driver
> + * that it should release a PCI device.
> + */
> +
> +static void ena_remove(struct pci_dev *pdev)
> +{
> +	__ena_shutoff(pdev, false);
> +}
> +
> +/* ena_shutdown - Device Shutdown Routine
> + * @pdev: PCI device information struct
> + *
> + * ena_shutdown is called by the PCI subsystem to alert the driver that
> + * a shutdown/reboot (or kexec) is happening and device must be disabled.
> + */
> +
> +static void ena_shutdown(struct pci_dev *pdev)
> +{
> +	__ena_shutoff(pdev, true);
> +}
> +
>   #ifdef CONFIG_PM
>   /* ena_suspend - PM suspend callback
>    * @pdev: PCI device information struct
> @@ -4420,6 +4450,7 @@ static struct pci_driver ena_pci_driver = {
>   	.id_table	= ena_pci_tbl,
>   	.probe		= ena_probe,
>   	.remove		= ena_remove,
> +	.shutdown	= ena_shutdown,
>   #ifdef CONFIG_PM
>   	.suspend    = ena_suspend,
>   	.resume     = ena_resume,
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
